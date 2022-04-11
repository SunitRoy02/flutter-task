// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';

class TitleWidget extends StatelessWidget {
  final title;
  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36.0),
      child: Text(title,
        style: GoogleFonts.alegreyaSans(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: deepBlue
        ),),
    );
  }
}
