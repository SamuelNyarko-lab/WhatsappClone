// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

chatMessage(String message) {
  return Padding(
    padding: EdgeInsets.all(
      15,
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.cyan,
      ),
      padding: EdgeInsets.all(5),
      child: AutoSizeText(
        message,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ),
  );
}
