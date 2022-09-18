import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:travel_blog/style/color.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 25,
                            fontFamily: 'Source Sans Pro',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // logo
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Image.asset(
                    'assets/images/klogo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                // welcome
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Text(
                    'Login to start\nplanning your trip.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ),
                // login
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Text(
                    'By proceeding, you agree to our Terms of Use and confirm you have read Privacy and Cookie Statement.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
                // email
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                // password
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                // forgot password
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // login button
              ],
            ),
          ],
        ));
  }
}
