import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../utils/colorConstant.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Text(
                "Details",
                style: TextStyle(fontSize: 30),
              ),
              Image(
                image: AssetImage('assets/home.png'),
              ),
              Text(
                "CRAFTMAN HOUSE",
                style: TextStyle(fontSize: 30),
              ),
              Text("520N Beaudry Ave, Los Angeles"),
              Container(
                child: Row(children: [
                              SizedBox(height: 20,),

                  Image(image: AssetImage('assets/bed.png')),
                  Text("4 beds"),
                  Image(image: AssetImage('assets/bath.png')),
                  Text("4 baths"),
                  Image(image: AssetImage('assets/car.png')),
                  Text("1 garage"),
                ]),
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('assets/girl.png'),
                  ),
                  Column(
                    children: [
                      Text(
                        "Rebecca Teetha",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        "Rebecca Teetha",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorConstant.cyanBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/call.png')),
                        Text('Call'),
                      ],
                    ),
                  )
                ],
              ),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry., \n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley"),
              Text("Gallery"),
              Row(
                children: [
                  Image(image: AssetImage('h1.png')),
                  Image(image: AssetImage('h2.png')),
                  Image(image: AssetImage('h3.png')),
                  Image(image: AssetImage('h4.png')),
                ],
              ),
              Text("Price"),
              Row(
                children: [
                  Text("5990000"),
                  ElevatedButton(child: Text("BUY NOW"), onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
