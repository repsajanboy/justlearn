import 'package:flutter/material.dart';
import 'package:justlearn/presentation/widgets/widgets.dart';
import 'package:justlearn/routing/app_router_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 50.0,
                  bottom: 20.0,
                ),
                child: Image(
                  image: AssetImage('assets/images/logo/justlearn.png'),
                  width: MediaQuery.of(context).size.width * .5,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    fontFamily: 'WorkSans',
                    color: Colors.black54,
                  ),
                  prefixIcon: Icon(Icons.email),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF3061cc), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF3061cc), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    fontFamily: 'WorkSans',
                    color: Colors.black54,
                  ),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF3061cc), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF3061cc), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontFamily: 'WorkSans',
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.menu);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  backgroundColor: Color(0xFF3061cc),
                  elevation: 5.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'WorkSans',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontFamily: 'WorkSans',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.signup);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: socialMediaLoginWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
