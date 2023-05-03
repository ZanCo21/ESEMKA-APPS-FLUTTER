import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_esemka_app/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/teslalogo.png',
              height: 100.0,
            ),
            SizedBox(height: 40.0),
            Text(
              'Welcome Back!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              'Please sign in to your account',
              style: TextStyle(
                color: Color.fromARGB(255, 46, 46, 46),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                filled: true,
                fillColor: Color.fromRGBO(67, 68, 69, 100),
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  // borderSide: BorderSide(color: Color(LinearGradient(colors: colors))),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                filled: true,
                fillColor: Color.fromRGBO(67, 68, 69, 100),
                hintText: "Enter your email",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password ?'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (m) => Home()
                ),
              );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(top: 20, bottom: 20, left: 50,right: 50),
                backgroundColor: Color.fromRGBO(47, 47, 55, 100), // Warna latar belakang tombol
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 8.0),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
