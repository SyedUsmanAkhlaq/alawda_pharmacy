import 'package:flutter/material.dart';
import 'package:alawda_pharmacy/Screens/Dashboard.dart';

void main() {
  runApp(AlawdaPharmacy());
}

class AlawdaPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}
