import 'package:flutter/material.dart';
import 'package:flutter1/constants/colors.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatefulWidget {
  const WidgetDetail({super.key});

  @override
  State<WidgetDetail> createState() => _WidgetDetailState();
}

class _WidgetDetailState extends State<WidgetDetail> {
  int value=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text("App Name"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          leading: const Text("menu"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(value.toString()),
              Text("Hello", 
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: HexColor(primaryColor)
              ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor(backgroundColor),
          onPressed: () {
            setState(() {
              value++;
            });
          },
          child: const Text("+", style: TextStyle(
            fontSize: 33
          )),
        ),
      ),
    );
  }
}


