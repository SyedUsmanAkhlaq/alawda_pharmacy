import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class DialogueBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final String message;
  final Function onOKPress;
  final bool okButton;

  const DialogueBox({
    Key key,
    this.imagePath,
    this.title,
    this.message,
    this.onOKPress,
    this.okButton,
  });
  @override
  Widget build(BuildContext context) {
    return AssetGiffyDialog(
      image: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
      entryAnimation: EntryAnimation.DEFAULT,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
      ),
      description: Text(
        message,
        textAlign: TextAlign.justify,
      ),
      onlyCancelButton: okButton ?? true,
      buttonCancelColor: Colors.blueAccent,
      buttonCancelText: Text(
        'Close',
        style: TextStyle(color: Colors.white),
      ),
      buttonOkColor: Colors.red,
      buttonOkText: Text(
        'Exit',
        style: TextStyle(color: Colors.white),
      ),
      onOkButtonPressed: onOKPress,
    );
  }
}
