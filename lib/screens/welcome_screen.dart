import 'package:flutter/material.dart';

import '../data/data.dart';
import '../screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: welcomeScreenImage))),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0)
              ])),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Cooking Experience Like a Chef",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 1.2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Let's make a delicious dish with the best recipe for the family",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                SizedBox(height: 30.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomeScreen()));
                  },
                  child: Container(
                    width: 170.0,
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("Get Started",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600))
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
