import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableCard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResetPassword extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Text(
                'Reset Password',
                style: kMainHeading,
              ),
//              BackArrow(),
              SizedBox(height: 20),
              Text(
                'Enter your Email you use to Sign in to',
                style: kSecondHeading,
              ),
              Image.asset('images/reset.jpg'),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(84, 104, 255, .2),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ]),
                  child: ReusableCard(
                    hintLabel: 'Email Address',
                    onChanged: (value) {
                      email = value;
                      print(email);
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),
              ReusableButton(
                label: 'Reset Password',
                onPress: () async {
                  await _auth.sendPasswordResetEmail(email: email);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
