
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../app_colors.dart';


class SimpleTextField extends StatefulWidget {

  final String? title;
  final String hintText;
  final Widget? iconS, iconP;
  final TextInputType typeText;
  final VoidCallback? onTap;
  final TextEditingController controller;
  final String? text;
  final IconData? iconData;
  final ValueChanged<String>? valueChanged;
  final double? sizeIcon;
  final bool? onSender;
  final double? width;
  final double? heigth;
  final int? maxLine ;
  final double hauteur ;
  final EdgeInsets? margin;
  final Color? fillColor , hoverColor , strokeColors;
  final FormFieldValidator<dynamic>? validator;
  final FocusNode? focusNode;
  final bool?  obscureText, readOnly , showCursor , enableInteractiveSelection;

  const SimpleTextField(
      {Key? key,
        this.title,
        this.obscureText,
        this.focusNode,
        this.fillColor,
        this.margin,
        this.maxLine,
        this.validator,
        this.hoverColor,
        this.strokeColors,
        required this.hauteur,
        this.width,
        this.heigth,
        this.readOnly,
        this.showCursor,
        this.enableInteractiveSelection,
        required this.hintText,
        this.iconS,
        this.iconP,
        required this.typeText,
        this.onTap,
        this.text,
        this.iconData,
        this.valueChanged,
        this.sizeIcon,
        this.onSender,
        required this.controller})
      : super(key: key);

  @override
  State<SimpleTextField> createState() => _SimpleTextFieldState();
}

class _SimpleTextFieldState extends State<SimpleTextField> {
  bool getPassword = false;
  String valueSearch = '';

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      readOnly: widget.readOnly ?? false,
      enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
      showCursor: widget.showCursor ?? true,

      autofocus: false,
      focusNode: widget.focusNode,
      keyboardType: widget.typeText,
      maxLines: widget.maxLine ?? 1,
      controller: widget.controller,
      obscureText: widget.obscureText!,
      validator: widget.validator,
      style: GoogleFonts.poppins(
        fontSize: 13,
        color: AppColors.scale1,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          fillColor: widget.fillColor ?? AppColors.backgroundcolor,
          /* suffixIcon: BlocBuilder<CompanyPresentationBloc, CompanyPresentationState>(

              builder: (context, state) {

                return InkWell(
                  onTap: widget.onSender != null && widget.onSender! && state.isWrite ? widget.onTap :
                  widget.onTap,
                  child: Icon(widget.onSender != null &&  widget.onSender! && state.isWrite ? Icons.send:
                  widget.iconData,size: widget.sizeIcon ?? AppSizes.h_15.h),
                );

              }),*/
          prefixIcon: widget.iconP,
          suffixIcon: widget.iconS,
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: AppColors.scale1,
            fontWeight: FontWeight.w400,
          ),


          isDense: true,
          hoverColor: widget.hoverColor ?? AppColors.scale1,
          contentPadding:  EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 13,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
            const BorderSide(color: AppColors.white, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
       /*   errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
            const BorderSide(color: AppColors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide:
            const BorderSide(color: AppColors.red, width: 1),
          ),*/
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          )),
      onTap: (){

      },
      onChanged: widget.valueChanged ?? (text) {

      },
    );

     /* Container(
          width: widget.width ?? 200,
          height: widget.maxLine == null  ? widget.heigth ?? 40: null,
          margin: widget.margin ?? const EdgeInsets.only(left: AppSizes.h_20,top: AppSizes.h_10,bottom: AppSizes.h_10),
          decoration: BoxDecoration(
            color: AppColors.backgroundcolor,
            borderRadius: BorderRadius.circular(AppSizes.h_8),
          ),
          child: TextFormField(
            autofocus: false,
            focusNode: widget.focusNode,
            keyboardType: widget.typeText,
            maxLines: widget.maxLine ?? 1,
            controller: widget.controller,
            validator: widget.validator,
            style: GoogleFonts.poppins(
              fontSize: AppSizes.h_12,
              color: AppColors.bgDark,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
                hintText: widget.hintText,
                filled: true,
                fillColor: widget.fillColor ?? AppColors.backgroundcolor,
                *//* suffixIcon: BlocBuilder<CompanyPresentationBloc, CompanyPresentationState>(

              builder: (context, state) {

                return InkWell(
                  onTap: widget.onSender != null && widget.onSender! && state.isWrite ? widget.onTap :
                  widget.onTap,
                  child: Icon(widget.onSender != null &&  widget.onSender! && state.isWrite ? Icons.send:
                  widget.iconData,size: widget.sizeIcon ?? AppSizes.h_15.h),
                );

              }),*//*
                prefixIcon: widget.iconP,
                suffixIcon: widget.iconS,
                hintStyle: GoogleFonts.poppins(
                  fontSize: AppSizes.h_12,
                  color: AppColors.scale_06,
                  fontWeight: FontWeight.w400,
                ),


                contentPadding: const EdgeInsets.symmetric(
                  vertical: AppSizes.h_6,
                  horizontal: AppSizes.h_13,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  const BorderSide(color: AppColors.greybackgroundchip, width: 0.3),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  const BorderSide(color: AppColors.greybackgroundchip, width: 0.3),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  BorderSide(color: AppColors.red, width: 0.3),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  BorderSide(color: AppColors.red, width: 0.3),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                floatingLabelStyle: GoogleFonts.poppins(
                  fontSize: AppSizes.h_12,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                )),
            onTap: (){

            },
            onChanged: widget.valueChanged ?? (text) {

            },
          ));*/
  }
}
