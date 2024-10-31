import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:flutter/material.dart';

class CustomTextfeiledNum extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final String? Function(String?) validator;

  final ValueSetter? onSaved;
  final ValueSetter? onChanged;

  final int? maxLines;
  final TextEditingController? controller;

  const CustomTextfeiledNum({
    Key? key,
    @required this.inputType,
    this.suffexIcon,
    this.prefixIcon,
    this.hintText,
    @required this.onSaved,
    required this.validator,
    this.onChanged,
    this.maxLines,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 55,
      //   width: 330,
      child: TextFormField(
        cursorColor: primryColor,
        keyboardType: TextInputType.phone,
        onChanged: onChanged,
        validator: validator,
        onSaved: onSaved,
        maxLines: 1,
        controller: controller,
        //  textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        style: TextStyle(
            fontSize: 19,
            color: secondColor,
            height: 0.8,
            fontWeight: FontWeight.w700,
            fontFamily: 'Cairo',
            letterSpacing: 1.3),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 5),
          hintText: hintText,
          hintStyle: TextStyle(color: hintTextCol),
          suffixIcon: suffexIcon,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 7, left: 10, right: 10),
            child: Text(
              "+213 ",
              style: TextStyle(
                  fontSize: 19,
                  color: secondColor,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Cairo',
                  letterSpacing: 1),
            ),
          ),
          filled: true,
          fillColor: feiledTextColor,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: const BorderSide(
                width: 2,
                color: primryColor,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19),
              borderSide: const BorderSide(
                color: primryColor,
              )),
        ),
      ),
    );
  }
}
