import  'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg circles.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              //color: Colors.yellow,
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: const Center(
                child: Text("RUNVERVE",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 60,color: Colors.white),),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              //color: Colors.greenAccent,
              height: 550,
              width: double.infinity,
              child: Image.asset('assets/images/jogging right.png'),
            )
          ],
        ),
      ),
    );
  }
}
