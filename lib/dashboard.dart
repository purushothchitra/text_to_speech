import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'dart:async';

// class Dashboard extends StatefulWidget {
//   const Dashboard({super.key});
//
//   @override
//   State<Dashboard> createState() => _DashboardState();
// }
//
// class _DashboardState extends State<Dashboard> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//               top: 0,
//               left: 0,
//               right: 0,
//               child:Container(
//                 height: 300,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                         image: AssetImage('assets/images/Rectangle 2.png'),
//                         fit: BoxFit.cover
//                     )
//                 ),
//               )),
//           const Positioned(
//             top: 50, // Adjust the position of the avatar as needed
//             left: 125, // Adjust the position of the avatar as needed
//             child: CircleAvatar(
//               radius: 70, // Set the radius to control the size of the avatar
//               backgroundImage: AssetImage('assets/images/purushoth.jpg'),
//             ),
//           ),
//           Positioned(
//               top: 230,
//               child: Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width-40,
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 10,
//                           spreadRadius: 2
//                       )
//                     ]
//                 ),
//                 child: Column(
//                   children: [
//                     Column(
//                       children: [
//                         Container(
//
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//           ),
//           Positioned(
//               top: 430,
//               child: Container(
//                 padding: const EdgeInsets.all(15),
//                 width: MediaQuery.of(context).size.width-40,
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 10,
//                           spreadRadius: 2
//                       )
//                     ]
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 0,
//                           right: 0
//                       ),
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Row(
//                               children: [
//                                 Icon(
//                                     Icons.manage_accounts
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text('Coach personalized recommendation'),
//                               ],
//                             ),
//                             IconButton(
//                               onPressed: (){},
//                               icon: const Icon(
//                                 Icons.arrow_forward_ios,
//                                 size: 15,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(0),
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Row(
//                               children: [
//                                 Icon(
//                                     Icons.coffee_sharp
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text('Achievements'),
//                               ],
//                             ),
//                             IconButton(
//                               onPressed: (){},
//                               icon: const Icon(
//                                 Icons.arrow_forward_ios,
//                                 size: 15,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(0),
//                       child: Container(
//                         child:  Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Row(
//                               children: [
//                                 Icon(
//                                   Icons.settings_rounded,
//                                   size: 30,
//                                   color: Colors.grey,
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text('Settings'),
//                               ],
//                             ),
//                             IconButton(
//                               onPressed: (){},
//                               icon: const Icon(
//                                 Icons.arrow_forward_ios,
//                                 size: 15,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(0),
//                       child: Container(
//                         child:  Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Row(
//                               children: [
//                                 Icon(
//                                   Icons.wifi_calling,
//                                   color: Colors.pink,
//                                   size: 30,
//                                 ),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Text('Contact us'),
//                               ],
//                             ),
//                             IconButton(
//                               onPressed: (){},
//                               icon: const Icon(
//                                 Icons.arrow_forward_ios,
//                                 size: 15,
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//               )
//           )
//         ],
//       ),
//     );
//   }
// }
//
class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  _DashBoardState createState() => _DashBoardState();
}
class _DashBoardState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            const LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg circles.png"), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                child: const Text('Hello'),
              ),
              Container(
                child: const Text('Hello'),
              ),
            ],
          ),
        )
    );
  }
}