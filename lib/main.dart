import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tasarim_denemeleri/screens/home_screen.dart';
import 'package:flutter_tasarim_denemeleri/screens/login_screen.dart';
import 'package:flutter_tasarim_denemeleri/screens/recommended_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: LoginScreen());
  }
}
