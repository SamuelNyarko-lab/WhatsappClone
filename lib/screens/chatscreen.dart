// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/models/contact.dart';
import 'package:whatsapp/screens/chatdetailscreen.dart';
import 'package:whatsapp/widgets/personchat.dart';

chatscreen() {
  //Contact contact = Contact();
  return Scaffold(
    body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: ListView.builder(
            itemCount: contact.length,
            scrollDirection: Axis.vertical,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatDetailScreen(
                          contact: contact[index],
                        ),
                      ));
                },
                child: Container(
                    child: personChat(
                        context,
                        contact[index].imagelink,
                        contact[index].name,
                        contact[index].messages[index].time,
                        contact[index].messages[index].value,
                        contact[index].messages[index].status)),
              );
            }))),
    floatingActionButton: Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(0, 205, 64, 1),
      ),
      child: IconButton(
        icon: Icon(
          Icons.message,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ),

    // child: ListView(
    //   padding: EdgeInsets.symmetric(
    //     vertical: 5,
    //   ),
    //   children: [
    //     personChat(
    //         'assets/images/ghana.png',
    //         'Elon Musk',
    //         '2:00',
    //         'Hello Elon. This is Sam talking. How are you doing?',
    //         'received'),
    //     personChat('assets/images/usa.png', 'Bill Gates', '2:00',
    //         'Good morning Bill. How are you doing?', 'sent'),
    //     personChat('assets/images/ghana.png', 'Jeff Bezos', '2:00',
    //         'Hello Jeff. Why u dey air me?', 'delivered'),
    //   ],
    // ),
  );
}
