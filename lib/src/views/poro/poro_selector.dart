import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PoroSelector extends StatelessWidget  {

  const PoroSelector({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Poro Selector"),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/poro_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                child: const Text(
                  "Escanea un codigo qr para Selecionar tu poro",
                  style: TextStyle(
                      fontSize: 19.0
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                width: 256,
                height: 256,
                color: Colors.black,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                  width: 124,
                  height: 124,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () => context.go("/play"),
                child: const Text(
                  "Escanear"
                ))
            ],
          )
        ),
      ),
    );
  }
}