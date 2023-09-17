import 'package:flutter/material.dart';


class Home extends StatelessWidget  {

  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 12,
        title: const Text("My poro"),
      ),

      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/poro_2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, ''),
              child: const Text("Play"),
            ),
            const Text("Cargando"),
          ],
        ),
      ),
    );
  }
}