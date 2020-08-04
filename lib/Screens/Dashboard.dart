import 'package:alawda_pharmacy/Screens/AppDrawer.dart';
import 'package:alawda_pharmacy/Screens/AskPharmacist.dart';
import 'package:alawda_pharmacy/Screens/BabyMom.dart';
import 'package:alawda_pharmacy/Screens/Equipment.dart';
import 'package:alawda_pharmacy/Screens/Registration.dart';
import 'package:alawda_pharmacy/Screens/Skincare.dart';
import 'package:alawda_pharmacy/Screens/Vitamins.dart';
import 'package:flutter/material.dart';
import 'Medicine.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AppDrawer(),
                        ),
                      );
                    },
                    icon: Icon(Icons.reorder),
                  ),
                  Spacer(flex: 2),
                  Image.asset(
                    'images/logo.jpeg',
                    scale: 15,
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.person),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registeration(),
                          ),
                        );
                      }),
                  IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
                ],
              ),
              Text(
                'Alawda Pharmacy',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search Medicine',
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
              SizedBox(height: 5),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AskPharmacist(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 120,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                            image: AssetImage('images/doc.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        'Ask the Pharmacist',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MenuCard(
                    label: 'Medicine',
                    imagePath: 'images/medicine.webp',
                    color: Colors.green,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Medicine(),
                        ),
                      );
                    },
                  ),
                  MenuCard(
                    label: 'Skin Care',
                    imagePath: 'images/personal.webp',
                    color: Colors.pinkAccent,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SkinCare(),
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MenuCard(
                    label: 'Baby & Mom',
                    imagePath: 'images/mom.webp',
                    color: Colors.blueGrey,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BabyMom(),
                        ),
                      );
                    },
                  ),
                  MenuCard(
                    label: 'Medical Devices',
                    imagePath: 'images/device.jpg',
                    color: Colors.blue,
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Equipment(),
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MenuCard(
                    label: 'Vitamin & Supplement',
                    imagePath: 'images/vitamins.webp',
                    color: Color(0xFF393e46),
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Vitamins(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String label;
  final String imagePath;
  final Color color;
  final Function onPress;
  const MenuCard({this.label, this.imagePath, this.color, this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 170,
        height: 150,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              height: 80,
              width: 80,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
