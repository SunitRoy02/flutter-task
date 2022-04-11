// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';

class ListTileWidget extends StatelessWidget {
  final index, name, price, discription;

  const ListTileWidget({
    Key? key,
    required this.index,
    required this.name,
    required this.price,
    required this.discription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0, top: 15.0),
      margin: const EdgeInsets.only(left: 36.0, top: 10.0, right: 30.0),
      width: _size.width * 1,
      decoration: BoxDecoration(
          color: index % 2 == 0 ? lightPink : skyBlue,
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                getImage(name),
                color: index % 2 == 0 ? accentPink : Colors.white,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: index % 2 == 0 ? accentPink : blueButton,
                ),
                child: Text(
                  'Book Now',
                  style: GoogleFonts.alegreyaSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: GoogleFonts.alegreyaSans(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: deepBlue),
              ),
              Text(
                '₹ $price',
                style: GoogleFonts.alegreyaSans(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: deepBlue),
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            discription,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.alegreyaSans(
                fontSize: 14.0, fontWeight: FontWeight.w400, color: dark),
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }

  getImage(name) {
    switch (name) {
      case 'One Day Package':
        return 'assets/images/cal_01.png';
      case 'Three Day Package':
        return 'assets/images/cal_01.png';
      case 'Five Day Package':
        return 'assets/images/cal_05.png';
      case 'weekend Package':
        return 'assets/images/sun_cal.png';
      default:
        return 'assets/images/cal_01.png';

    }
  }
}
