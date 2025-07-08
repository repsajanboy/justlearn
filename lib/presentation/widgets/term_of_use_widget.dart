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
            style: TextStyle(
              fontFamily: 'WorkSans',
            ),
          ),
          TextSpan(
            text: 'Terms of Services',
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
              fontFamily: 'WorkSans',
            )
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
