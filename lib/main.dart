import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/app.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}
