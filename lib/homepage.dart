import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Water tracker"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(child: Text("hello"),),
    );
  }

}