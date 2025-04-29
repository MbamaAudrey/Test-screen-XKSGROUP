
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H2 extends StatelessWidget {

  String text;
  Color color;

  H2({super.key, required this.text,required this.color});

  @override
  Widget build(BuildContext context) => Text(text,style:
  GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 17,height: 1.5,color: color ?? Colors.black),);


}