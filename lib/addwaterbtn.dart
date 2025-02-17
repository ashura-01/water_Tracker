import 'package:flutter/material.dart';

class Addwaterbtn extends StatelessWidget {
  final String name;
  const Addwaterbtn({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey,foregroundColor: Colors.white),
            child: Text(name)),
      ),
    );
  }
}
