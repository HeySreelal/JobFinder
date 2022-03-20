import 'package:flutter/material.dart';
import 'package:jobfinder/screens/components/action_button.dart';
import 'package:jobfinder/screens/profile.dart';
import 'package:jobfinder/utils/open_profile.dart';

import 'components/input.dart';

class LoginScreen extends StatefulWidget {
  final String title;
  const LoginScreen({Key? key, this.title = "Login"}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/tx.jpg"),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 600,
                child: Column(
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    JFInput(
                      label: "Username",
                      controller: _nameControl,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const JFInput(
                      label: "Password",
                      isObscure: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ActionButton(
                      "LOGIN",
                      onTap: () => checkUsernameAndOpenProfile(
                        context,
                        _nameControl.text.trim(),
                      ),
                      bg: Colors.black,
                      fg: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
