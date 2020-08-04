import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AskPharmacist extends StatelessWidget {
  String name;
  String email;
  String phone;
  String question;
  final snackBar = SnackBar(content: Text('Your Query has been submitted!'));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Center(
              child: Text(
                'Ask Pharmacist',
                style: kMainHeading,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Please fill the required information',
                style: kSecondHeading,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                onChanged: (value) => name = value,
                decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFa6b1e1), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                onChanged: (value) => email = value,
                decoration: InputDecoration(
                  hintText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFa6b1e1), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                onChanged: (value) => phone = value,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFa6b1e1), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextFormField(
                onChanged: (value) => question = value,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Your Query',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFFa6b1e1), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: ReusableButton(
                label: 'Submit',
                onPress: () {
                  print(name);
                  print(email);
                  print(phone);
                  print(question);
                  Get.snackbar(
                    'Query Submitted',
                    'Your query has been submitted !',
                    backgroundColor: Colors.black,
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM,
                  );
//                  Flushbar(
//                    title: 'Query Submitted',
//                    message: 'Your query has been submitted !',
//                    margin: EdgeInsets.all(10),
//                    isDismissible: true,
//                    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
//                    duration: Duration(seconds: 2),
//                  ).show(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
