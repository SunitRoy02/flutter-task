class TaskModel {
  TaskModel({
      CurrentBookings? currentBookings, 
      List<Packages>? packages,}){
    _currentBookings = currentBookings;
    _packages = packages;
}

  TaskModel.fromJson(dynamic json) {
    _currentBookings = json['current_bookings'] != null ? CurrentBookings.fromJson(json['current_bookings']) : null;
    if (json['packages'] != null) {
      _packages = [];
      json['packages'].forEach((v) {
        _packages?.add(Packages.fromJson(v));
      });
    }
  }
  CurrentBookings? _currentBookings;
  List<Packages>? _packages;
TaskModel copyWith({  CurrentBookings? currentBookings,
  List<Packages>? packages,
}) => TaskModel(  currentBookings: currentBookings ?? _currentBookings,
  packages: packages ?? _packages,
);
  CurrentBookings? get currentBookings => _currentBookings;
  List<Packages>? get packages => _packages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_currentBookings != null) {
      map['current_bookings'] = _currentBookings?.toJson();
    }
    if (_packages != null) {
      map['packages'] = _packages?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Packages {
  Packages({
      int? id, 
      String? packageName, 
      int? price, 
      String? description,}){
    _id = id;
    _packageName = packageName;
    _price = price;
    _description = description;
}

  Packages.fromJson(dynamic json) {
    _id = json['id'];
    _packageName = json['package_name'];
    _price = json['price'];
    _description = json['description'];
  }
  int? _id;
  String? _packageName;
  int? _price;
  String? _description;
Packages copyWith({  int? id,
  String? packageName,
  int? price,
  String? description,
}) => Packages(  id: id ?? _id,
  packageName: packageName ?? _packageName,
  price: price ?? _price,
  description: description ?? _description,
);
  int? get id => _id;
  String? get packageName => _packageName;
  int? get price => _price;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['package_name'] = _packageName;
    map['price'] = _price;
    map['description'] = _description;
    return map;
  }

}

class CurrentBookings {
  CurrentBookings({
      String? packageLabel, 
      String? fromDate, 
      String? fromTime, 
      String? toDate, 
      String? toTime,}){
    _packageLabel = packageLabel;
    _fromDate = fromDate;
    _fromTime = fromTime;
    _toDate = toDate;
    _toTime = toTime;
}

  CurrentBookings.fromJson(dynamic json) {
    _packageLabel = json['package_label'];
    _fromDate = json['from_date'];
    _fromTime = json['from_time'];
    _toDate = json['to_date'];
    _toTime = json['to_time'];
  }
  String? _packageLabel;
  String? _fromDate;
  String? _fromTime;
  String? _toDate;
  String? _toTime;
CurrentBookings copyWith({  String? packageLabel,
  String? fromDate,
  String? fromTime,
  String? toDate,
  String? toTime,
}) => CurrentBookings(  packageLabel: packageLabel ?? _packageLabel,
  fromDate: fromDate ?? _fromDate,
  fromTime: fromTime ?? _fromTime,
  toDate: toDate ?? _toDate,
  toTime: toTime ?? _toTime,
);
  String? get packageLabel => _packageLabel;
  String? get fromDate => _fromDate;
  String? get fromTime => _fromTime;
  String? get toDate => _toDate;
  String? get toTime => _toTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['package_label'] = _packageLabel;
    map['from_date'] = _fromDate;
    map['from_time'] = _fromTime;
    map['to_date'] = _toDate;
    map['to_time'] = _toTime;
    return map;
  }

}