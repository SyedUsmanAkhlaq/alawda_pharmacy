import 'package:alawda_pharmacy/ReusableMaterial/Constants.dart';
import 'package:alawda_pharmacy/ReusableMaterial/ReusableButton.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class OpenProduct extends StatefulWidget {
  final name;
  final image;
  final description;
  final price;

  const OpenProduct(
      {Key key, this.name, this.image, this.description, this.price})
      : super(key: key);
  @override
  _OpenProductState createState() => _OpenProductState(
      name: name, image: image, description: description, price: price);
}

class _OpenProductState extends State<OpenProduct> {
  final name;
  final image;
  final description;
  final price;
  int quantity = 0;
  int amount = 0;
  int price2;
  bool stopPress = false;

  turnToInt() {
    price2 = int.parse(price);
  }

  _OpenProductState({this.name, this.image, this.description, this.price});
  @override
  void initState() {
    turnToInt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
//            SizedBox(
//              height: 60,
//            ),
//            Center(
//              child: Image.network(
//                image,
//                scale: 2,
//              ),
//            ),

            Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment(1, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Colors.blueAccent,
                      ),
                      height: 400,
                      width: 300,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0, 0),
                    child: Image.network(
                      image,
                      scale: 2,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.8, -0.75),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
              color: Colors.white,
              height: MediaQuery.of(context).size.height / 2,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                name,
                style: kMainHeading,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                description,
                style: kSecondHeading,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5.9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(84, 104, 255, .2),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      )
                    ],
//                    color: Colors.blueAccent.withOpacity(0.3),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(EvaIcons.minus),
                          onPressed: () {
                            setState(() {
                              quantity--;

                              if (quantity < 0) {
                                setState(() {
                                  quantity = 0;
                                });
                              }
                              amount = price2 * quantity;
                            });
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          quantity.toString(),
                          style: kMainHeading,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                          icon: Icon(EvaIcons.plus),
                          onPressed: () {
                            setState(() {
                              quantity++;
                              amount = price2 * quantity;
                            });
                            print(amount);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(84, 104, 255, .2),
                        blurRadius: 20,
                        offset: Offset(0, 5),
                      )
                    ],
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          amount.toString() + ' Rs',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
//            ReusableButton(
//              label: 'ghg',
//              onPress: () {
//                turnToInt();
//                print(price2);
//              },
//            )
          ],
        ),
      ),
    );
  }
}
