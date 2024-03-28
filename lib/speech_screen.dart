// import 'dart:html';
//
// import 'package:flutter/material.dart';
// import 'package:sttproject/colors.dart';
// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:speech_to_text/speech_to_text.dart';
//
// class SpeechScreen extends StatefulWidget {
//   const SpeechScreen({super.key});
//
//   @override
//   State<SpeechScreen> createState() => _SpeechScreenState();
// }
//
// class _SpeechScreenState extends State<SpeechScreen> {
//   var text = "hold the button and start speaking";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton:  const AvatarGlow(
//         child: CircleAvatar(
//           backgroundColor: bgColor,
//           radius: 35,
//           child: Icon(Icons.mic,color: Colors.white),
//         ),
//       ),
//       appBar: AppBar(
//         leading: const Icon(Icons.sort_rounded,color: Colors.white,),
//         centerTitle: true,
//         backgroundColor: bgColor,
//         elevation: 0.0,
//         title: const Text(
//           "speech to text",
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             color: textColor,
//           ),
//         ),
//       ),
//       body: Container(
//         alignment: Alignment.center,
//         color: Colors.red,
//         padding: EdgeInsets.symmetric(
//           horizontal: 24,
//               vertical: 16
//         ),
//         margin: const EdgeInsets.only(bottom: 150),
//         child: Text(
//           text,
//           style: const TextStyle(fontSize: 24,color: Colors.black54,fontWeight: FontWeight.w600),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_to_text_provider.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {

  var textSpeech = "CLICK ON MIC TO RECORD";
  SpeechToText speechToText = SpeechToText();
  var isListening = false;

  void checkMic() async{
    bool micAvailable = await speechToText.initialize();

    if(micAvailable){
      print("MicroPhone Available");
    }else{
      print("User Denied th use of speech micro");
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkMic();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(textSpeech),

              GestureDetector(
                onTap: () async{
                  if(!isListening){
                    bool micAvailable = await speechToText.initialize();

                    if(micAvailable){
                      setState(() {
                        isListening = true;
                      });

                      speechToText.listen(
                          listenFor: Duration(seconds: 20),
                          onResult: (result){
                            setState(() {
                              textSpeech = result.recognizedWords;
                              isListening = false;
                            });
                          }
                      );


                    }
                  }else{
                    setState(() {
                      isListening = false;

                      speechToText.stop();
                    });
                  }
                },
                child: CircleAvatar(
                  child: isListening ? Icon(Icons.record_voice_over): Icon(Icons.mic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}