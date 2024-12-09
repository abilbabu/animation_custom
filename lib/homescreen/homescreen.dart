import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double height = 100;
  double width = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            if (height == 100) {
              height = 300;
              width = 300;
            } else {
              height = 100;
              width = 100;
            }
            setState(() {});
          },
          child: AnimatedOpacity(
            opacity: height == 100 ? .2 : 1,
            duration: Duration(seconds: 2),
            child: AnimatedContainer(
              duration: Duration(seconds: 5),
              curve: Curves.bounceInOut,
              height: height,
              width: width,
              decoration: BoxDecoration(
                  color: height == 100 ? Colors.red : Colors.amber,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(height == 100
                          ? "https://images.pexels.com/photos/163077/mario-yoschi-figures-funny-163077.jpeg?auto=compress&cs=tinysrgb&w=600"
                          : "https://images.pexels.com/photos/264905/pexels-photo-264905.jpeg?auto=compress&cs=tinysrgb&w=600"))),
            ),
          ),
        ),
      ),
    );
  }
}
