import 'package:flutter/material.dart';

class Addwaterbtn extends StatelessWidget {
  int amount;
  IconData? icon;
  VoidCallback onPressed;

  Addwaterbtn(
      {super.key, required this.amount, this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey, foregroundColor: Colors.white),
          label: Text("+$amount"),
          icon: Icon(
            icon ?? Icons.water_drop,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
