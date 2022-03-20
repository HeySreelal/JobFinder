import 'package:flutter/material.dart';
import 'package:jobfinder/screens/components/appbar.dart';
import 'package:jobfinder/screens/signup.dart';

import 'components/action_button.dart';
import 'login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: jfAppBar(appBarElements(context)),
      body: _buildHome(),
    );
  }

  void navigate(BuildContext context, String pageTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LoginScreen(
            title: pageTitle,
          );
        },
      ),
    );
  }

  Container _buildHome() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black87,
      ),
      child: SizedBox.expand(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(50),
              child: Image.asset("images/jf.jpg"),
            ),
            SizedBox(
              width: 5,
              height: 300,
              child: Container(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 400,
                    child: ActionButton(
                      "Login As Worker",
                      bg: Colors.black,
                      fg: Colors.white,
                      onTap: () => navigate(context, "Login As Worker"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 400,
                    child: ActionButton(
                      "Login As Employer",
                      bg: Colors.black,
                      fg: Colors.white,
                      onTap: () => navigate(context, "Login As Employer"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ActionButton(
                    "Sign Up",
                    bg: Colors.transparent,
                    fg: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row appBarElements(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            "images/jf.jpg",
            width: 50,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        divide(),
        Text(
          "About",
          style: Theme.of(context).textTheme.headline6,
        ),
        divide(),
        Text(
          "How It Works",
          style: Theme.of(context).textTheme.headline6,
        ),
        divide(),
        Expanded(child: Container()),
        const ActionButton(
          "Hire A Worker",
        ),
        const SizedBox(width: 10),
        const ActionButton(
          "Earn Money By Working",
          bg: Colors.black,
          fg: Colors.white,
        )
      ],
    );
  }

  Widget divide() => Row(
        children: [
          const SizedBox(width: 20),
          Text(
            "|",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 20),
        ],
      );
}
