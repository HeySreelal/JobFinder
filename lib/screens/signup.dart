import 'package:flutter/material.dart';
import 'package:jobfinder/screens/components/action_button.dart';
import 'package:jobfinder/screens/profile.dart';
import 'package:jobfinder/utils/open_profile.dart';

import 'components/input.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isWorker = true;
  set isWorker(bool worker) {
    setState(() {
      _isWorker = worker;
    });
  }

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
                      "SIGN UP",
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: _isWorker,
                          onChanged: (bool? value) {
                            isWorker = value ?? true;
                          },
                        ),
                        Text(
                          "Worker",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Radio(
                          value: false,
                          groupValue: _isWorker,
                          onChanged: (bool? value) {
                            isWorker = value ?? false;
                          },
                        ),
                        Text(
                          "Employer",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    color: Colors.black,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    JFInput(
                      hint: "Set A Username",
                      controller: _nameControl,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const JFInput(
                      hint: "Set A Password",
                      isObscure: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const JFInput(
                      hint: "Confirm Your Password",
                      isObscure: true,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ActionButton(
                      "SIGN UP",
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
