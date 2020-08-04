import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({@required this.label, this.onPress});

  final String label;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 215,
      child: RaisedButton(
        highlightColor: Colors.blueAccent,
        splashColor: Colors.blueAccent,
        highlightElevation: 5,
        onPressed: onPress,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF202231), Color(0xFF202231)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
