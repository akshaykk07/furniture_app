import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Maintext extends StatelessWidget {
  final String text;

  const Maintext({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto( fontSize: 26, fontWeight: FontWeight.w500, color: Colors.black),
    );
  }
}
