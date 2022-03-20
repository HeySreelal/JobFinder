import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jobfinder/screens/components/appbar.dart';
import 'package:jobfinder/screens/components/input.dart';
import 'package:jobfinder/screens/home.dart';

class Profile extends StatefulWidget {
  final String? name;
  const Profile({Key? key, this.name}) : super(key: key);

  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  String name = "";

  @override
  void initState() {
    name = randomName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: jfAppBar(appBarElements(context)),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      child: Text(
                        name.characters.first,
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                      radius: 60,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      name,
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.black45,
                      ),
                      child: const Text(
                        "WORKER",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("${name.toLowerCase()}@gmail.com"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("+1 202-555-0123"),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Profile"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.engineering),
                      title: const Text("Skills"),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black87,
                ),
                flex: 5,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarElements(BuildContext context) {
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
          width: 100,
        ),
        const SizedBox(
          width: 400,
          child: JFInput(
            prefix: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hint: "Browse Jobs",
            hintStyle: TextStyle(
              color: Colors.white,
            ),
            borderColor: Colors.white,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
              (route) => route.isFirst,
            );
          },
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  String randomName() {
    final names = [
      "Albert",
      "Barry",
      "Charlie",
      "David",
      "Eddie",
      "Frank",
      "George",
      "Harry",
      "Ivan",
      "John",
      "Kevin",
      "Liam",
      "Mark",
      "Nathan",
      "Oscar",
      "Paul",
      "Quincy",
      "Robert",
      "Steve",
      "Tom",
      "Ursula",
      "Victor",
      "Wendy",
      "Xavier",
      "Yvonne",
      "Zachary",
      "Albert",
      "Barry",
      "Charlie",
      "David",
      "Eddie",
      "Frank",
      "George",
      "Harry",
      "Ivan",
      "John",
      "Kevin",
      "Liam",
      "Mark",
      "Nathan",
      "Oscar",
      "Paul",
      "Quincy",
      "Robert",
      "Steve",
      "Tom",
      "Ursula",
      "Victor",
      "Wendy",
      "Xavier",
      "Yvonne",
      "Zachary",
    ];
    return names[Random().nextInt(names.length - 1)];
  }
}
