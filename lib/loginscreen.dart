import  'package:flutter/material.dart';
import 'form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 2.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              //color: Colors.greenAccent,
              height: 550,
              width: double.infinity,
              child: Image.asset('assets/images/bro.png'),
            ),
            Container(
                child: Column(
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                          fixedSize: const Size(300, 45),
                        ),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w900,
                              color: Colors.green, // Change color if needed
                            ),
                            children: [
                              TextSpan(text: 'Login with '),
                              TextSpan(
                                text: 'Strava',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  const UserDetails()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10.0),
                          fixedSize: const Size(300, 45),
                        ),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w900,
                              color: Colors.green, // Change color if needed
                            ),
                            children: [
                              TextSpan(text: 'Register on '),
                              TextSpan(
                                text: 'Strava',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}