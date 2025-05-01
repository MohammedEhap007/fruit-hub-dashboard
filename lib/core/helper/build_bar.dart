import 'package:flutter/material.dart';

void buildBar(BuildContext context, String message, {bool isErrorBar = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: isErrorBar ? Colors.red : Colors.green,
      elevation: 0.0,
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      content: Center(child: Text(message)),
    ),
  );
}
