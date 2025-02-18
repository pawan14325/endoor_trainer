import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show({
    required BuildContext context,
    required String message,
    Color? backgroundColor,
    IconData? icon,
    Duration duration = const Duration(seconds: 3),
  }) {
    final snackBarController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: Navigator.of(context),
    );



    ScaffoldMessenger.of(context).clearSnackBars(); // Clear any existing SnackBars
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(

        content: Row(
          children: [
            if (icon != null) Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(child: Text(message, style: const TextStyle(color: Colors.white))),
          ],
        ),
        backgroundColor: backgroundColor ?? Colors.black,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(16, 50, 16, 20),
        duration: duration,
        onVisible: () {
          snackBarController.forward(); // Slide in
        },
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            snackBarController.reverse();
          },
        ),
      ),
    );


  }

  // Success SnackBar
  static void success(BuildContext context, String message) {
    show(
      context: context,
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle,
    );
  }

  // Error SnackBar
  static void error(BuildContext context, String message) {
    show(
      context: context,
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error,
    );
  }

  // Warning SnackBar
  static void warning(BuildContext context, String message) {
    show(
      context: context,
      message: message,
      backgroundColor: Colors.orange,
      icon: Icons.warning,
    );
  }

  // Info SnackBar
  static void info(BuildContext context, String message) {
    show(
      context: context,
      message: message,
      backgroundColor: Colors.blue,
      icon: Icons.info,
    );
  }
}
