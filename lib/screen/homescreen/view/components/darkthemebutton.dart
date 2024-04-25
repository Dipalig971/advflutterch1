
import 'package:flutter/material.dart';

Padding dark_theme_button() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
    child: Container(
      height: 90,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15)),
      child: const Text(
        'Dark Icon',
        style:
        TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
      ),
    ),
  );
}