import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PoroController extends StatelessWidget{

  const PoroController({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 50),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 9
              )
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      children: [
                        MaterialButton(
                          onPressed: () => context.go('/'),
                          child: const Icon(Icons.settings),
                        )
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        RotatedBox(
                          quarterTurns: 1,
                          child: Icon(Icons.arrow_back_rounded),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Icon(Icons.arrow_back_rounded),
                        )
                      ],
                    ),
                  ),
                ],
              )),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 400, 0, 0),
                  child: const Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          children: [
                            RotatedBox(
                              quarterTurns: 4,
                              child: Icon(Icons.arrow_back_rounded),
                            ),
                            RotatedBox(
                              quarterTurns: 2,
                              child: Icon(Icons.arrow_back_rounded),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      )
    );
  }

}