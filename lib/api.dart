import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tts/flutter_tts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _textEditingController = TextEditingController();
  final FlutterTts _flutterTts =  FlutterTts();
  var responce="";

  speak(String text) async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setPitch(1.0);
    await _flutterTts.setSpeechRate(0.50);
    await _flutterTts.speak(text);
  }

  List<dynamic> users =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest API call"),
      ),
      body: ListView.builder(
          itemCount:users.length ,
          itemBuilder: (context,index){
            final user = users[index];
            final name = user['name']['first'];
            final email = user["email"];
            final imageUrl = user["picture"]['thumbnail'];
            responce=name;
            return ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(imageUrl)),
              title: Text(name.toString()),
              subtitle: Text(email),
            );
          }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     // fetchUsers();
      //     speak(responce);
      //   },
      // ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
              fetchUsers();
          Future.delayed(Duration(seconds: 1), () {
            speak(responce);
          });
        },
      ),

    );
  }

  void fetchUsers() async{
    print("fetchUsers called");
    const url = "https://randomuser.me/api/?results=1";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final josn = jsonDecode(body);
    setState(() {
      users = josn['results'];
    });
    print("fetchUsers completed");
  }
}
