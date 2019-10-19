import 'package:flutter/material.dart';

double baseHeigth = 640.0;

double screenAware(double size, BuildContext context){
  return size* MediaQuery.of(context).size.height/baseHeigth;
}