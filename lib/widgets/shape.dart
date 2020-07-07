import 'package:flutter/material.dart';

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //final width =200.0;
    //final height = 200.0;
    var radauis = 40.0;
    var path = Path();

    path.moveTo(10.0, size.height * 0.33);
    path.lineTo(0, size.height - radauis);
    path.quadraticBezierTo(0, size.height, radauis, size.height);
    path.lineTo(size.width - radauis, size.height);
    path.quadraticBezierTo(
     size.width, size.height, size.width, size.height - radauis);
    path.lineTo(size.width, radauis * 2.2);
    path.quadraticBezierTo(size.width - 5, 55,
        size.width - radauis * 1.5, radauis * 1.5);
    path.lineTo(
        radauis , size.height * 0.33 - radauis * 0.2);
    path.quadraticBezierTo(
        8.0, size.height * 0.33, 7, size.height * 0.33 + 35);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  } 
}   