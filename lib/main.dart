import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alawda_pharmacy/Screens/Dashboard.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp(AlawdaPharmacy());
}

class AlawdaPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Dashboard(),
    );
  }
}
