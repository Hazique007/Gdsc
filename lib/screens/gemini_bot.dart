import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:gdsc/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class GeminiBot extends StatefulWidget {
  const GeminiBot({super.key});

  @override
  State<GeminiBot> createState() => _GeminiBotState();
}

class _GeminiBotState extends State<GeminiBot> {
  ChatUser myself = ChatUser(id: '1', firstName: 'Hazique');
  ChatUser bot = ChatUser(id: '2', firstName: 'Gemini');

  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];

  final myurl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyAUkIyYHOmT_kTLxb9UmHt1JnKNYnDdmYc';
  final header = {"Content-Type": "application/json"};

  getdata(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});

    var data = {
      "contents": [
        {
          "parts": [
            {"text": m.text}
          ]
        }
      ]
    };
    await http
        .post(Uri.parse(myurl), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);
        print(result['candidates'][0]['content']['parts'][0]['text']);
        ChatMessage m1 = ChatMessage(
          text: result['candidates'][0]['content']['parts'][0]['text'],
          user: bot,
          createdAt: DateTime.now(),
        );

        allMessages.insert(0, m1);
      } else {
        print("error occured");
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.background,
        title: Center(
            child: Text(
              'ChatBot',
              style:
              GoogleFonts.montserrat(fontSize: 20.0, fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.secondary),
            )),
      ),
      body:
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0,right: 5.0,left: 5.0),
        child: DashChat(
            inputOptions: InputOptions(inputTextStyle: GoogleFonts.poppins(fontSize: 10.0,color: MyColors.Font),alwaysShowSend: true),

            currentUser: myself,
            typingUsers: typing,
            onSend: (ChatMessage m) {
              getdata(m);
            },
            messages: allMessages),
      ),
    );
  }
}
