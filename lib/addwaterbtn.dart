import 'package:flutter/material.dart';

class Addwaterbtn extends StatelessWidget {
  const Addwaterbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ElevatedButton(onPressed: () {}, child: Text("Add 1000+")),
      ),
    );
  }
}
