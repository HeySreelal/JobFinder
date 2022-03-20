import 'package:flutter/material.dart';

PreferredSize jfAppBar(Widget child) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF040404),
            Color(0xFF252525),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: child,
    ),
  );
}
