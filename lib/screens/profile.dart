import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/signup.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(60.0),
          child: Text(
            "Fill Your Profile",
            style: TextStyle(
                fontFamily: "Rubik Medium",
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Image(
          image: AssetImage('assets/profile.png'),
          height: 100,
          width: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: Container(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Full Name"),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Nick Name",
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Date of Birth",
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: Container(
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Gender",
            )),
          ),
        ),
        Container(
          height: 60,
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: ElevatedButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => (Home()))),
            child: Text("Continue"),
          ),
        ),
      ]),
    );
  }
}
