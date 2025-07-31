import 'package:flutter/material.dart';
import 'package:school/Custom%20Widget/my_icon.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameContoller = TextEditingController();
    TextEditingController passContoller = TextEditingController();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('asset/auth.png'),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 60,
            ),
            Text(
              'Welcome',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                MyIcon(
                  totalRadius: 30,
                  iconRadius: 25,
                  iconSize: 30,
                  Color: Colors.amber,
                  IconData: Icons.people,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width:
                      screenWidth * 0.65, // Set the width to 65% of screen size
                  child: TextFormField(
                    controller: nameContoller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), // Apply outlined border
                      labelText: 'Username or Email', // Label for the field
                      hintText: 'Enter your username or email', // Hint text
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  radius:
                      30.0, // Controls the overall size of the circular area including the border
                  backgroundColor:
                      Colors.black, // The color of the circular border

                  child: CircleAvatar(
                    radius:
                        25.0, // Controls the size of the inner circle where the icon resides
                    backgroundColor:
                        Colors.white, // The background color for the icon
                    child: Icon(
                      Icons.lock,
                      size: 30.0, // Size of the icon itself
                      color: Colors.amber,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  width:
                      screenWidth * 0.65, // Set the width to 65% of screen size
                  child: TextFormField(
                    controller: passContoller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), // Apply outlined border
                      labelText: 'Password', // Label for the field
                      hintText: 'Enter your password', // Hint text
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        foregroundColor: Colors.black),
                    onPressed: () {},
                    child: Text('Login'))),
            TextButton(onPressed: () {}, child: Text('Forgot Password')),
            GestureDetector(
                onTap: () {},
                child: Align(
                    alignment: Alignment(0.8, 1),
                    child: Text("Don't have any account?"))),
          ]),
        ],
      ),
    );
  }
}
