import 'package:demo_test/controller/home_controller.dart';
import 'package:demo_test/widgets/HomeWidgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/color.dart';
import '../widgets/HomeWidgets/current_booking_card.dart';
import '../widgets/HomeWidgets/list_tile.dart';
import '../widgets/HomeWidgets/stack_card.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _c = Get.put(HomeController());
    var _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Obx(()=>
          _c.isLoading.value ?
              const Center(
                child: CircularProgressIndicator(),
              ) :
          SafeArea(
        child: ListView(
          primary: true,
          children:  [
            Container(
              width: _size.width * 1,
              height: 60.0,
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/icons/menu.png'),
            ),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 14.0),
              child:  ListTile(
                leading: const CircleAvatar(
                  backgroundColor: accentPink,
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                title: Text('Welcome',
                  style: GoogleFonts.alegreyaSans(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: dark
                  ),),
                subtitle: Text('Emily Cyrus',
                  style: GoogleFonts.alegreyaSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: accentPink
                  ),),
              ),
            ),
            const HomeStackCard(),
            const TitleWidget(title: 'Your Current Booking'),
             CurrentBookingCard(
              packageName: _c.data.value.currentBookings!.packageLabel,
               fromDate: _c.data.value.currentBookings!.fromDate,
               fromTime: _c.data.value.currentBookings!.fromTime,
               toDate : _c.data.value.currentBookings!.toDate,
               toTime : _c.data.value.currentBookings!.toTime,
            ),
            const TitleWidget(title: 'Packages'),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: _c.data.value.packages!.length,
                itemBuilder: (BuildContext context,int index){
                  return ListTileWidget(
                    index: index,
                    name: _c.data.value.packages![index].packageName,
                    price: _c.data.value.packages![index].price,
                    discription: _c.data.value.packages![index].description,
                  );
                }
            )

          ],
        ),
      )),
    );
  }
}
