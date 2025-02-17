import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.shade50,
                boxShadow: [BoxShadow(
                  color: Colors.blue.shade100,
                  blurRadius: 10,
                  spreadRadius: 2
                )],
              ),
              child: Column(
                children: [
                  Text("Today's in take",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                  SizedBox(height: 10,),
                  Text("1000",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 28,color: Colors.blue),)
        
                ],
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: CircularProgressIndicator(
                    value: 0.8,
                    color: Colors.blue,
                    backgroundColor: Colors.grey.shade300,
                    strokeWidth: 10,

                  ),
                ),
                Text("70%",style: TextStyle(color: Colors.black,fontSize: 4.h),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
