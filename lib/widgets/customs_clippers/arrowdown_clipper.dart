import 'package:flutter/material.dart';

class ArrowTopClipper   extends CustomClipper<Path>{
@override
getClip(Size size){
double width = 22;
double height = 22;
double triangletieight = 22.0;
Path path = Path();
path.moveTo(width/2, 0);
path.lineTo(0, triangletieight) ;
path.lineTo(size.width, triangletieight);
path.close();
return path;

}

@override
bool shouldReclip(CustomClipper oldclipper) {
return true ;

}
}
