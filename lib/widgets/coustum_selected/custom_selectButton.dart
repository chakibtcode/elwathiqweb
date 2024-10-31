import 'package:flutter/material.dart';
import 'package:elwathiqweb/constants/colors_const.dart';

import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';

class CustomSelectButton extends StatelessWidget {
  const CustomSelectButton({
    Key? key,
    required this.hintText,
    required this.onTap,
    required this.value,
  }) : super(key: key);
  final String hintText;
  final String value;

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        onTap();
      },

      autofocus: true,
      hoverColor: Colors.red,
      // focusColor: Colors.red,
      splashColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: feiledTextColor,
                size: 23,
              ),
            ),
            TextWidget(
              color: hintText == value ? colorGray1 : secondColor,
              size: 19,
              titel: hintText == value ? hintText : value,
              weight: hintText == value ? FontWeight.w600 : FontWeight.w700,
            ),
            Expanded(
              child: Icon(
                Icons.keyboard_arrow_down,
                color: hintText == value ? colorGray1 : secondColor,
                size: 23,
              ),
            ),
          ],
        ),
        height: 55,
        width: 330,
        decoration: BoxDecoration(
            color: feiledTextColor,
            border: Border.all(width: 0.5, color: feiledTextColor),
            borderRadius: BorderRadius.circular(19)),
      ),
    );
  }
}

//=============================================================================

