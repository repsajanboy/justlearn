import 'package:flutter/material.dart';

Widget termOfUse() {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: 'By signing in, you are agreeing to our\n',
          ),
          TextSpan(
            text: 'Terms of Services',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' and ',
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
