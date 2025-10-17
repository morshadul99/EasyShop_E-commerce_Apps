import 'dart:math';

import 'package:e_commerce/pages/details_page.dart';
import 'package:e_commerce/pages/home_page.dart';
import 'package:e_commerce/pages/login_page.dart';
import 'package:e_commerce/pages/profile_page.dart';
import 'package:e_commerce/pages/sign_up_page.dart';
import 'package:e_commerce/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: login_page(),
    );
  }
}


