
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elwathiqweb/constants/colors_const.dart';

class CustomTextFormField extends StatelessWidget {
  final TextInputType? inputType;
  final Widget? suffexIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? obscureText;

  final ValueSetter? onSaved;
  final ValueSetter? onChanged;
  final void Function()? onTap;
  final String? Function(String?) validator;

  final int? maxLines;
  final TextEditingController? controller;

  const CustomTextFormField({
    Key? key,
    @required this.inputType,
    this.suffexIcon,
    this.prefixIcon,
    this.hintText,
    this.readOnly,
    this.onTap,
    this.keyboardType,
    @required this.onSaved,
    this.onChanged,
    required this.validator,
    this.maxLines,
    this.obscureText,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    //  height: 60,
     

      child: TextFormField(
        //  cursorColor: mainColor,
        // keyboardType: TextInputType.phone,
          keyboardType: keyboardType,
         readOnly: readOnly == null ? false : readOnly!, 
        onChanged: onChanged,
        onSaved: onSaved,
        validator: validator,
        obscureText : obscureText == null ? false : obscureText!,
        maxLines:maxLines  == null ? 1 : maxLines,
        controller: controller,
cursorColor: primryColor,        //textAlignVertical: TextAlignVertical.center,
onTap: onTap,
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
              borderSide: const BorderSide(
                width: 2,
                color: feiledTextColor,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(
                width: 2,
                color: feiledTextColor,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: const BorderSide(
                color: feiledTextColor,
              )),
        ),
      ),
    );
  }
}
