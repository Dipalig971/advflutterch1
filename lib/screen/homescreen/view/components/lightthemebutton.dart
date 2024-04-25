import 'package:flutter/material.dart';

Padding light_theme_button() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
    child: Container(
      height: 90,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'Light Icon',
        style:
        TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    ),
  );
}

