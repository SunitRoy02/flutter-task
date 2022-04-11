import 'package:demo_test/model/TaskModel.dart';
import 'package:demo_test/service/home_service.dart';
import 'package:get/get.dart';

class HomeController  extends GetxController{
   var data = TaskModel().obs;
   var isLoading = false.obs;


   @override
  void onInit() {
     getData();
     super.onInit();
  }

  Future getData() async{
   isLoading(true);
    await HomeService.getHomeScreenData().then((value) {
      isLoading(false);
      if(value != null){
        data.value = value;
        print(data.toJson());
      }
    });
  }

}