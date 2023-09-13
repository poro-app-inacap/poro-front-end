import 'dart:js';

import 'package:flutter/material.dart';
import 'package:poro_front_end/src/views/home.dart';

void main(){

  var route = {
    '/': (context) => Home(),
    '/user/settings': (context) => Home(),
    '/poro/controller': (context) => Home(),
    '/poro/selector': (context) => Home()
  };

  runApp(
    MaterialApp(
      title: "Poro App",
      initialRoute: '/',
      routes: route
    ),
  );
}