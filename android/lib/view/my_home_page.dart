import 'package:flutter/material.dart';

import '../utils/color.dart';
import 'home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: [
            const HomeWidget(),
            const SizedBox(
              child: Center(child: Text('Packages'),),
            ),
            const SizedBox(
              child: Center(child: Text('Bookings'),),
            ),
            const SizedBox(
              child: Center(child: Text('Profile'),),
            ),
          ][selectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    'assets/icons/home.png',
                    color: selectedIndex == 0 ? accentPink : dark,
                  )),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 34.0,
                  height: 30.0,
                  child: Image.asset(
                    'assets/icons/sale.png',
                    color: selectedIndex == 1 ? accentPink : dark,
                  )),
              label: 'Packages',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    'assets/icons/clock.png',
                    color: selectedIndex == 2 ? accentPink : dark,
                  )),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: Image.asset(
                    'assets/icons/user.png',
                    color: selectedIndex == 3 ? accentPink : dark,
                  )),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: accentPink,
          unselectedItemColor: Colors.black,
          unselectedLabelStyle: const TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w400, color: dark),
          selectedLabelStyle: const TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w400, color: accentPink),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (int i) {
            setState(() {
              selectedIndex = i;
            });
          }),
    );
  }
}
