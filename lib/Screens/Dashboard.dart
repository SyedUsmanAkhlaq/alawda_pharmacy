import 'package:flutter/material.dart';

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
                    onPressed: () {},
                    icon: Icon(Icons.reorder),
                  ),
                  Spacer(flex: 2),
                  Image.asset(
                    'images/logo.jpeg',
                    scale: 15,
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.person), onPressed: null),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/green.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 130,
                    width: 170,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/sugar.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 130,
                    width: 170,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 120,
                color: Colors.blueAccent,
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 150,
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/medicine.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        Text(
                          'Medicine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 150,
                    color: Colors.pinkAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/personal.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Text(
                            'Personal Health Care',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 150,
                    color: Color(0xFF545454),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/device.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Medical Devices',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 150,
                    color: Colors.deepPurpleAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/mom.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Mom, Baby care',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 170,
                    height: 150,
                    color: Color(0xFFcab29a),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/vitamins.webp'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Vitamins Supplements',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 150,
                    color: Color(0xFFf89679),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage('images/offer.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'Special Offers',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
