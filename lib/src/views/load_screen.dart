import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poro_front_end/src/components/animated/progress_bar.dart';

class LoadScreen extends StatefulWidget {
  const LoadScreen({super.key});

  @override
  State<LoadScreen> createState() =>
      _LoadScreen();
}

class _LoadScreen extends State<LoadScreen> {

  _LoadScreen() {
    Timer timer;
    timer = Timer(const Duration(seconds: 2), () {
      context.go("/");
    });
  }

  double progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 12,
        title: const Text("My poro"),
      ),
      body: Column(
        children: [
          Center(
            heightFactor: 2.5,
            child: Image.asset(
              'assets/images/poro_1.png',
              fit: BoxFit.cover,
              width: 124,
              height: 124,
            ),
          ),
          const Text("Cargando"),
          Container(
            width: 100,
            height: 10,
            color: Colors.blue,
            child: ProgressBarWidget(10.0, progress),
          ),
        ],
      ),
    );
  }

}