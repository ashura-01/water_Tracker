import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/addwaterbtn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIntake = 0;
  final int goal = 2000;

  void addWater(int ammount) {
    setState(() {
      if (_currentIntake < goal) {
        _currentIntake = (_currentIntake +ammount).clamp(0, goal);
      }
    });
  }

  void resetWater() {
    setState(() {
      _currentIntake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (_currentIntake/goal).clamp(0.0, 1.0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Water tracker"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.shade50,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue.shade100,
                      blurRadius: 10,
                      spreadRadius: 2)
                ],
              ),
              child: Column(
                children: [
                  Text(
                    "Today's in take",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${_currentIntake}",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                        color: Colors.blue),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: progress,
                    color: Colors.blue,
                    backgroundColor: Colors.grey.shade300,
                    strokeWidth: 10,
                  ),
                ),
                Text(
                  "${progress*100}%",
                  style: TextStyle(color: Colors.black, fontSize: 4.h),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Wrap(
              children: [
                Addwaterbtn(
                  amount: 1000,
                  icon: Icons.water_drop,
                  onPressed: () => addWater(1000),
                ),
                Addwaterbtn(
                  amount: 500,
                  icon: Icons.water_drop,
                  onPressed: () => addWater(500),
                ),
                Addwaterbtn(
                  amount: 100,
                  icon: Icons.water_drop,
                  onPressed: () => addWater(100),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: ()=>resetWater(),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white),
              child: Text("reset"),
            ),
          ],
        ),
      ),
    );
  }
}
