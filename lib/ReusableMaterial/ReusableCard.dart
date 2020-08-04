import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.hintLabel, this.onChanged, this.validator});

  final String hintLabel;
  final Function onChanged;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]),
        ),
      ),
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintLabel,
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}

class ReusablePasswordCard extends StatelessWidget {
  ReusablePasswordCard(
      {this.hintLabel, this.pass, this.onPress, this.onChanged});

  final String hintLabel;
  final bool pass;
  final Function onPress;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        obscureText: pass,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintLabel,
            suffixIcon: IconButton(
              icon: Icon(
                pass == false ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: onPress,
            ),
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
