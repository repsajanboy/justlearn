import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'term_of_use_widget.dart';

Widget socialMediaLoginWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: Column(
      children: [
        Text(
          'or',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF3061cc),
                  elevation: 5.0
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Log in with Facebook",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 5.0
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      SizedBox(width: 20.0),
                      Text(
                        "Log in with Google",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            termOfUse(),
          ],
        )
      ],
    ),
  );
}
