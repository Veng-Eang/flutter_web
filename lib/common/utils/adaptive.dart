import 'package:flutter/widgets.dart';

double widthOfScreen(BuildContext context){
  return MediaQuery.of(context).size.width;
}

double heightOfScreen(BuildContext context){
  return MediaQuery.of(context).size.height;
}