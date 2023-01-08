import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup.dart';
import 'package:flutter_application_1/screens/profile.dart';
import 'package:flutter_application_1/screens/home.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
          child: Container(
            child: Image(
              image: AssetImage("assets/login.png"),
              height: 80,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              "Login to Your Account",
              style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: "Username or email",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      labelText: "Password"),
                ),
              ),
            ),
            TextButton.icon(
                onPressed: (() {}),
                icon: Icon(Icons.check_box_outline_blank_outlined),
                label: Text('Remember me')),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.0)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (SignUp())));
                },
                child: Text("Sign In"),
              ),
            )
          ],
        )
      ]),
    );
  }
}
