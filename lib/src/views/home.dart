import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class Home extends StatelessWidget  {

  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 12,
        title: const Text("Poro App"),
      ),

      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/poro_2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => context.go('/qr_code_lector'),
                child: const Text("Play"),
              ),
              ElevatedButton(
                onPressed: () => context.go('/Settings'),
                child: const Text("Settings"),
              ),
              ElevatedButton(
                onPressed: () => context.go('/help'),
                child: const Text("Ayuda"),
              ),
              ElevatedButton(
                onPressed: () => exit(1),
                child: const Text("Salir"),
              )
            ],
          ),
        ),
      ),
    );
  }
}