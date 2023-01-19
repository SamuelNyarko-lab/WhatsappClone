// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/models/contact.dart';
import 'package:whatsapp/widgets/chatmessage.dart';

class ChatDetailScreen extends StatefulWidget {
  late Contact contact;
  ChatDetailScreen({super.key, required this.contact});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState(this.contact);
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  late Contact contact;
  _ChatDetailScreenState(this.contact);
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(7, 90, 80, 1),
        title: AutoSizeText(
          contact.name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: deviceHeight,
            width: deviceWidth,
            color: Colors.black,
            child: Image(
              fit: BoxFit.fill,
              opacity: AlwaysStoppedAnimation(0.5),
              image: AssetImage(
                contact.imagelink,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: chatMessage(contact.messages.first.value),
          ),
        ],
      )),
    );
  }
}
