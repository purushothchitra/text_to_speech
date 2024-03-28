import 'package:flutter/material.dart';

class RunningGear extends StatefulWidget {
  const RunningGear({super.key});

  @override
  _RunningGearState createState() => _RunningGearState();
}

class _RunningGearState extends State<RunningGear> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_2_.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const Text(
              "Select your running gear",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            Container(
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Image.asset("assets/images/Button.png"),
      ),
    );
  }
}
