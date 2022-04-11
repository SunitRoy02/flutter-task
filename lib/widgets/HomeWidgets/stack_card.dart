import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';

class HomeStackCard extends StatelessWidget {
  const HomeStackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 22.0),
          margin: const EdgeInsets.only(left: 36.0,top: 36.0,right: 36.0),
          width: _size.width * 1,
          height: 170.0,
          decoration: BoxDecoration(
              color: lightPink,
              borderRadius: BorderRadius.circular(12.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nanny and\n Babysitting Service',
                style: GoogleFonts.alegreyaSans(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                    color: deepBlue
                ),),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: deepBlue,
                ),
                child: Text('Book Now',
                  style: GoogleFonts.alegreyaSans(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                  ),),
              )
            ],
          ),
        ),
        Container(
          width: _size.width * 1,
          alignment: Alignment.bottomRight,
          child: Image.asset('assets/images/nanny.png'),
        ),
      ],
    );
  }
}
