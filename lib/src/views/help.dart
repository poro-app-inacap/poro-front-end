import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Help extends StatelessWidget{

  const Help({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ayuda"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/poro_2.png"),
              fit: BoxFit.cover,
            ),
        ),
        padding: const EdgeInsets.fromLTRB(0, 265, 0, 0),
        child: const Column(
          children: [
            Center(
              child: Text(
                "Puedes usar esta aplicacion para controlar a tu poro de juguete",
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )
      )
    );
  }

}