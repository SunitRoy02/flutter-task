// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';

class CurrentBookingCard extends StatelessWidget {
  final packageName, fromDate, fromTime, toDate, toTime;

  const CurrentBookingCard(
      {Key? key,
     required this.packageName,
     required this.fromDate,
     required this.fromTime,
     required this.toDate,
     required this.toTime})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36.0, right: 36.0),
      child: Card(
        elevation: 0.3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    packageName,
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: accentPink),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: accentPink,
                    ),
                    child: Text(
                      'Start',
                      style: GoogleFonts.alegreyaSans(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: GoogleFonts.alegreyaSans(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: dark),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/calender.png'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            fromDate,
                            style: GoogleFonts.alegreyaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: dark),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/cmall.png'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            fromTime,
                            style: GoogleFonts.alegreyaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: dark),
                          ),
                        ],
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'To',
                        style: GoogleFonts.alegreyaSans(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: dark),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/calender.png'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            toDate,
                            style: GoogleFonts.alegreyaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: dark),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Image.asset('assets/icons/cmall.png'),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            toTime,
                            style: GoogleFonts.alegreyaSans(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: dark),
                          ),
                        ],
                      ),
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: deepBlue,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/star.png'),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          'Rate Us',
                          style: GoogleFonts.alegreyaSans(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: deepBlue,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/pin.png'),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          'Geolocation',
                          style: GoogleFonts.alegreyaSans(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: deepBlue,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/icons/radio.png'),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          'Survillence',
                          style: GoogleFonts.alegreyaSans(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
