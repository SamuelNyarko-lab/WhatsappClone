// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

chatcount(String number, Color color) {
  return Container(
    height: 30,
    width: 30,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.white,
    ),
    child: AutoSizeText(
      number,
      style: TextStyle(
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
