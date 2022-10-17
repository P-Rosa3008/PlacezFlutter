import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() {
  return AppBar(
    toolbarHeight: 65,
    backgroundColor: const Color(0xFF203361),
    title: const Text(
      "Placez",
      style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
