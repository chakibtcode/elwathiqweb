import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elwathiqweb/constants/colors_const.dart';

class CustomTextFormFieldProduct extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final Color? colorBorder;

  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final ValueSetter? onFieldSubmitted;
  final String? Function(String?) validator;
  final void Function()? onTap;


  final int? maxLines;
  final TextEditingController? controller;
  final FocusNode? focusNode;

  const CustomTextFormFieldProduct({
    Key? key,
    @required this.inputType,
    this.suffexIcon,
    this.prefixIcon,
    this.colorBorder,
    this.onTap,
    this.hintText,
    @required this.onSaved,
    this.onChanged,
    this.onFieldSubmitted,
    required this.validator,
    this.maxLines,
    this.controller,
    this.focusNode,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
     
      child: TextFormField(
        //  cursorColor: mainColor,
        // keyboardType: TextInputType.phone,
        onFieldSubmitted:onFieldSubmitted,
        onChanged: onChanged,
        onSaved: onSaved,
        onTap: onTap,
        validator: validator,
        maxLines: 1,
        controller: controller,
focusNode: focusNode,
        //textAlignVertical: TextAlignVertical.center,

        style: TextStyle(
            fontSize: 17,
            color: blackColor,
            fontWeight: FontWeight.w700,
            fontFamily: 'Satoshi',
            letterSpacing: 1.3),
        decoration: InputDecoration(
        //  contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          hintStyle: TextStyle(
            height: 1.1,
            fontFamily: 'Satoshi',
            fontSize: 17,
            color: colorGray1,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w600,
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffexIcon ,
          filled: true,
          fillColor: feiledTextColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide:  BorderSide(
                width: 2,
                color: colorBorder!,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide:  BorderSide(
                width: 2,
                color: colorBorder!,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide:  BorderSide(
                color: feiledTextColor,
              )),
        ),
      ),
    );
  }
}
