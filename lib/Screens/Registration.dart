import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:alawda_pharmacy/Screens/SignIn.dart';
import 'package:alawda_pharmacy/Screens/SignUp.dart';
import 'package:flutter/material.dart';

class Registeration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf9ffff),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Registration',
                style: kMainHeading,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Register Yourself or get signed in to your Account',
              style: kSecondHeading,
            ),
            Image.asset('images/signup.jpg'),
            SizedBox(
              height: 60,
            ),
            ReusableButton(
              label: 'Sign In',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 215,
              child: OutlineButton(
                highlightedBorderColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                borderSide: BorderSide(color: Color(0xFF202231)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
