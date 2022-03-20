import 'package:flutter/material.dart';

import '../screens/profile.dart';

void checkUsernameAndOpenProfile(BuildContext context, String name) {
  if (name.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Please enter a username"),
      ),
    );
    return;
  }
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => Profile(
        name: name,
      ),
    ),
    (route) => route.isFirst,
  );
}
