
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1 extends StatelessWidget {

  String text;
  Color? color;

  H1({super.key, required this.text, this.color});

  @override
  Widget build(BuildContext context) => Text(text,style:
  GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 28,height: 1.5,color: color ?? Colors.black),);


}