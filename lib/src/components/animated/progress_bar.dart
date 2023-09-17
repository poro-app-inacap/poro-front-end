import 'package:flutter/material.dart';

class ProgressBarWidget extends StatefulWidget {
  final max;
  final val;

  const ProgressBarWidget(this.max, this.val, {super.key});

  @override
  _ProgressBarWidgetState createState() => _ProgressBarWidgetState();
}

class _ProgressBarWidgetState extends State<ProgressBarWidget> {
  var height;

  @override
  Widget build(BuildContext context) {
    height = widget.val;
    Widget stack = Container(
      margin: const EdgeInsets.all(90.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            //background
            decoration: BoxDecoration(
                color: const Color(0xFFE8F0F0),
                borderRadius: BorderRadius.circular(30.0)),
            height: 5,
            width: 100,
          ),
          AnimatedContainer(
            foregroundDecoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      spreadRadius: -1,
                      offset: Offset(0, 0),
                      blurRadius: 5)
                ]),
            duration: const Duration(milliseconds:800 ),
            //foregroundS
            curve: Curves.decelerate,
            height: 7,
            width: height,
          )
        ],
      ),
    );
    return stack;
  }
}