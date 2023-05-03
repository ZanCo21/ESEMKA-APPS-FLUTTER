import 'dart:html';

import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              child: Text(
                'Tesla',
                style: TextStyle(color: Color.fromARGB(255, 97, 97, 97)),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 165.0),
              padding: EdgeInsets.only(right: 10),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Model S',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                      IconButton(
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (m) => Profile()),
                        );
                      },
                      icon: Image(image: AssetImage("assets/icons/avatar.png")),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 45),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        'No Chargers',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon:
                              Image.asset("assets/icons/information-line.png"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 1000,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset("assets/images/teslacar.png"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.battery_full,
                                size: 15,
                                color: Color.fromARGB(255, 65, 65, 65)),
                            Text('Battery',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 65, 65, 65),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text('81%', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.navigation,
                                size: 15,
                                color: Color.fromARGB(255, 65, 65, 65)),
                            Text('Range',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 65, 65, 65),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text('322km', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.thermostat_auto_sharp,
                                size: 15,
                                color: Color.fromARGB(255, 65, 65, 65)),
                            Text('Temperature',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 65, 65, 65),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Text('81%', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Text(
                    'Information',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Engine',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset("assets/icons/Vector.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '98%',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Tire pressures',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset("assets/icons/Vector.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '98%',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Cooling',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset("assets/icons/Vector.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '98%',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Sensors',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset("assets/icons/Vector.png"),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '98%',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Positioned(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                    ),
                    height: 130,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/line.png'),
                          alignment: Alignment.topCenter),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15, top: 15),
                            ),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'AC and Engine',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  TextSpan(text: '\n'),
                                  TextSpan(
                                      text: 'Tap to turn on/off or swipe up'),
                                  TextSpan(text: '\n'), // Baris baru
                                  TextSpan(text: ' for detail information'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Image(
                                width: 50,
                                image: AssetImage('assets/icons/poweron.png')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
