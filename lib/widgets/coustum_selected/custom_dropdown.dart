import 'package:elwathiqweb/constants.dart';
import 'package:flutter/material.dart';
import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class CustomDropDown extends StatelessWidget {
  final Object? value;
  final List<String>? items;
  final String? hintText;
  final Widget? prefixIcon;

  final ValueSetter? onChanged;
  final String? Function(Object?) validator;

  const CustomDropDown({
    Key? key,
    required this.value,
    required this.items,
    required this.hintText,
    required this.validator,
    this.onChanged,
    this.prefixIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    //   height: 60,
      //  width: 330,
      child: DropdownButtonFormField(
          validator: validator,
          decoration: InputDecoration(
          //  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            hintStyle: TextStyle(
                 height: 1.1,
              fontFamily: 'Satoshi',
              fontSize: 19,
              color: colorGray1,
              letterSpacing: 1.4,
              fontWeight: FontWeight.w600,
            ),
            hintText: hintText,
          
            prefixIcon: prefixIcon,
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
          value: value,
          items: items?.map((e) {
            return DropdownMenuItem(
              child: TextWidget(
                color: items![0] == items ? colorGray1 : bgColor,
                titel: '$e',
                size: 16,
                weight: FontWeight.w700,
              ),
              value: e,
            );
          }).toList(),
          onChanged: onChanged),
    );
  }
}
