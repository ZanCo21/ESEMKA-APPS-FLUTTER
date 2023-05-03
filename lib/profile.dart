import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_esemka_app/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 190,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (m) => Home()),
                          );
                        },
                        icon: Image.asset('assets/icons/back.png'),
                      ),
                      SizedBox(width: 90),
                      Text(
                        'Profile',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 90),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/icons/menu.png'),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: Stack(
                      children: [
                        Positioned(
                            child: Image.asset('assets/images/bigavatar.png')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'Cameron Williamson',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Text(
                    'Owner',
                    style: TextStyle(
                      color: Color.fromARGB(90, 255, 255, 255),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                    ),
                    height: 363,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(26),
                        topRight: Radius.circular(26),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 218, 218, 218),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'Join on',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(text: '\n'),
                                            TextSpan(text: '20 Jan 19'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'Gander',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            TextSpan(text: '\n'),
                                            TextSpan(text: 'Male'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'About',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 15, top: 10),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Mobile Phone'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20)),
                                            Image.asset(
                                                'assets/icons/call.png'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('(406) 555-0120'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text('Address'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20)),
                                            Image.asset(
                                                'assets/icons/lokasi.png'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('2972 Westheimer'),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text('Email'),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20)),
                                            Image.asset(
                                                'assets/icons/book.png'),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                                'willim.jennings\n@example.com'),
                                          ],
                                        ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
