import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/Loading.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableCard.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableDialogue.dart';
import 'package:alawda_pharmacy/Services/DatabaseServices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'SignIn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  final fireStore = Firestore.instance;

  String name;
  String email;
  String phoneNumber;
  String address;
  String password;
  String rePassword;
  FirebaseUser loggedInUser;
  bool pass1 = true;
  bool pass2 = true;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: ListView(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Sign Up',
                      style: kMainHeading,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Sign Up to track your order and more',
                      style: kSecondHeading,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      child: Column(
                        children: <Widget>[
                          ReusableCard(
                            hintLabel: 'Name',
                            onChanged: (value) {
                              name = value;
                            },
                          ),
                          ReusableCard(
                            hintLabel: 'Email',
                            onChanged: (value) {
                              email = value;
                              print(email);
                            },
                          ),
                          ReusablePasswordCard(
                            hintLabel: 'Password',
                            onChanged: (value) {
                              password = value;
                            },
                            pass: pass1,
                            onPress: () {
                              setState(() {
                                pass1 = !pass1;
                              });
                            },
                          ),
                          ReusablePasswordCard(
                            hintLabel: 'Re-enter Password',
                            onChanged: (value) {
                              rePassword = value;
                            },
                            pass: pass2,
                            onPress: () {
                              setState(() {
                                pass2 = !pass2;
                              });
                            },
                          ),
                          ReusableCard(
                            hintLabel: 'Phone Number',
                            onChanged: (value) {
                              phoneNumber = value;
                            },
                          ),
                          ReusableCard(
                            hintLabel: 'Address',
                            onChanged: (value) {
                              address = value;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      'Already have an Account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: Colors.blueGrey[700],
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: ReusableButton(
                      label: 'Sign Up',
                      onPress: () async {
                        if (name.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (_) => DialogueBox(
                              imagePath: 'images/warning.png',
                              title: 'Invalid Name',
                              message: 'You have left the Name field empty',
                            ),
                          );
                        } else if (!email.contains('.com') || email.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (_) => DialogueBox(
                              imagePath: 'images/warning.png',
                              title: 'Invalid Email',
                              message:
                                  'The email you entered is wrong, please check your email format and try again',
                            ),
                          );
                        } else if (password != rePassword ||
                            password.isEmpty ||
                            rePassword.isEmpty) {
                          loading = false;
                          showDialog(
                            context: context,
                            builder: (_) => DialogueBox(
                              imagePath: 'images/warning.png',
                              title: 'Password Mismatch',
                              message:
                                  'Password fields do not match. Please try again',
                            ),
                          );
                        } else if (phoneNumber.length != 11 ||
                            phoneNumber.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (_) => DialogueBox(
                              imagePath: 'images/warning.png',
                              title: 'Wrong Phone Number',
                              message:
                                  'The Phone Number looks to be wrong, please try again',
                            ),
                          );
                        } else if (address.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (_) => DialogueBox(
                              imagePath: 'images/warning.png',
                              title: 'Error!',
                              message: 'Address field cannot be empty',
                            ),
                          );
                        } else {
                          setState(() {
                            loading = true;
                          });

                          try {
                            AuthResult newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            FirebaseUser user = newUser.user;
                            await DatabaseServices(
                              uid: user.uid,
                            ).updateUserData(name, email, phoneNumber, address);

                            try {
                              await user.sendEmailVerification();
                            } catch (e) {
                              print(e);
                            }
                            if (newUser != null) {
                              setState(() {
                                loading = false;
                              });

                              await _auth.signInWithEmailAndPassword(
                                  email: email, password: password);
                              FirebaseUser user = await _auth.currentUser();

                              if (user != null) {
                                setState(() {
                                  loggedInUser = user;
                                });
                              }

                              while (loggedInUser?.uid == null) {}

                              if (loggedInUser?.uid != null) {
//                                await Hive.initFlutter();
                                var box = await Hive.openBox('userData');
                                box.putAll({
                                  'name': name,
                                  'email': email,
                                  'phone': phoneNumber,
                                  'address': address,
                                  'id': loggedInUser.uid,
                                });
                                showDialog(
                                  context: context,
                                  builder: (_) => DialogueBox(
                                    imagePath: 'images/success.png',
                                    title: 'Sign-Up Complete',
                                    message:
                                        'A verification email has been sent to you please verify your email address',
                                  ),
                                );
                              }
                            }
                          } catch (e) {
                            print(e);
                            loading = false;
                          }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 20)
                ],
              ),
            ),
          );
  }
}
