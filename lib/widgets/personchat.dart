// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'messgaecounter.dart';

//message status== read, sent, delivered, received, readreceived.
personChat(BuildContext context, imagelocation, name, time, message, status) {
  BuildContext context;
  return Container(
    height: 100,
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: AssetImage(imagelocation),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        AutoSizeText(
                          time,
                          style: TextStyle(
                            fontSize: 16.5,
                            fontWeight: FontWeight.normal,
                            color: status == 'received'
                                ? Color.fromRGBO(0, 205, 64, 1)
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        status == 'received'
                            ? SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                child: Icon(
                                  Icons.check_circle,
                                  color: status == 'sent'
                                      ? Colors.red
                                      : status == 'delivered'
                                          ? Colors.grey
                                          : Colors.blue,
                                  size: 20,
                                ),
                              ),
                        // SizedBox(
                        //   width: 7,
                        // ),
                        Expanded(
                          child: AutoSizeText(
                            message,
                            maxLines: 1,
                            minFontSize: 16,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              overflow: TextOverflow.clip,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        status == 'received'
                            ? messageCounter()
                            : SizedBox(
                                width: 0,
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 85,
          ),
          child: Divider(
            color: Colors.grey,
            height: 5,
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}
