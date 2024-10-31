import 'package:elwathiqweb/constants/colors_const.dart';
import 'package:elwathiqweb/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Circular extends StatelessWidget {
  final double radius;
  final double porsontage;
  final int nbr_done;
  final int nbr_no_done;
  final Color color;

  const Circular({Key? key, required this.porsontage,required this.radius,required this.nbr_done,required this.nbr_no_done, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {



    double a = porsontage * 100;

    return Container(
      child: CircularPercentIndicator(
        radius: radius!,
        animationDuration: 1200,
        lineWidth: 15.0,
        animation: true,
        percent: porsontage,
        center:  TextWidget(color: blackColor,size: 22,titel: a.toStringAsFixed(0)+'%',weight: FontWeight.w800,),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor:color,
        // Color.fromARGB(255, 50, 168, 82),
        backgroundColor: colorGray1,
      ),
    );
  }
}
