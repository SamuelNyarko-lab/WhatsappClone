// ignore_for_file: prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Padding messageCounter() {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Container(
      height: 25,
      width: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(0, 205, 64, 1),
      ),
      child: AutoSizeText(
        '2',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
          color: Colors.white,
        ),
      ),
    ),
  );
}
