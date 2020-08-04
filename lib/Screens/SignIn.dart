import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/Loading.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableCard.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableDialogue.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'ResetPassword.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String loggedInUserID;
  String password;
  bool loading = false;
  bool pass1 = true;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
              body: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Sign In',
                      style: kMainHeading,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'View your orders history and more by Signing In',
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
                            onChanged: (value) {
                              email = value;
                            },
                            hintLabel: 'Email',
                          ),
                          ReusablePasswordCard(
                            onChanged: (value) {
                              password = value;
                            },
                            hintLabel: 'Password',
                            pass: pass1,
                            onPress: () {
                              setState(() {
                                pass1 = !pass1;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      FlatButton(
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            color: Colors.blueAccent,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPassword(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      'Don\'t have an Account ?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF546270),
                      ),
                    ),
                  ),
                  Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ReusableButton(
                    label: 'Sign In',
                    onPress: () async {
                      if (!email.contains('@') ||
                          email == null ||
                          email == '' ||
                          !email.contains('.com')) {
                        showDialog(
                          context: context,
                          builder: (_) => DialogueBox(
                            title: 'Invalid Email',
                            message:
                                'The email you entered is wrong, please check your email format and try again',
                            imagePath: 'images/warning.png',
                          ),
                        );
                      } else if (password == null) {
                        showDialog(
                          context: context,
                          builder: (_) => DialogueBox(
                            title: 'Invalid Password',
                            message: 'The password field is empty',
                            imagePath: 'images/warning.png',
                          ),
                        );
                      } else {
                        try {
                          setState(() {
                            loading = true;
                          });

                          FirebaseUser signedInUser = (await _auth
                                  .signInWithEmailAndPassword(
                                      email: email.trim(), password: password)
                                  .catchError((e) {
                            setState(() {
                              loading = false;
                            });
                            String errorType;
                            String errorMessage;
                            if (e.message ==
                                'The password is invalid or the user does not have a password.') {
                              errorType = 'SignIn Error';
                              errorMessage = 'Invalid password entered';
                            } else if (e.message ==
                                'There is no user record corresponding to this identifier. The user may have been deleted.') {
                              errorType = 'SignIn Error';
                              errorMessage =
                                  'There is no account related to this email address';
                            } else if (e.message ==
                                'A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
                              errorType = 'Network Error';
                              errorMessage =
                                  'Unable to connect to the internet';
                            }

                            showDialog(
                                context: context,
                                builder: (_) => DialogueBox(
                                      imagePath: 'images/warning.png',
                                      title: errorType,
                                      message: errorMessage,
                                    ));
                          }))
                              .user;
                          if (!signedInUser.isEmailVerified) {
                            setState(() {
                              loading = false;
                            });
                            showDialog(
                              context: context,
                              builder: (_) => DialogueBox(
                                imagePath: 'images/warning.png',
                                title: 'Not Verified',
                                message:
                                    'Your email has not been verified please verify your email first',
                              ),
                            );
                          } else {
                            if (signedInUser != null) {
                              setState(() {
                                loggedInUserID = signedInUser.uid;
                              });
                            }

                            while (loggedInUserID == null) {}
                            if (loggedInUserID != null) {
                              setState(() {
                                loading = false;
                              });
                              print(loggedInUserID);

//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                  builder: (context) =>
//                                      Index(loggedInUserID, userType),
//                                ),
//                              );
                            }
                          }
                        } catch (e) {
                          print(e);
                          return;
                        }
                      }
                    },
                  )
                ],
              ),
            ),
          );
  }
}
