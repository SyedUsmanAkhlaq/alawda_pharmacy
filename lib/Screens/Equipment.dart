import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class Equipment extends StatelessWidget {
  final Firestore fireStore = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
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
                IconButton(icon: Icon(Icons.person), onPressed: null),
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
              ],
            ),
            Center(
              child: Text(
                'Alawda Pharmacy',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
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
            Center(
              child: Text(
                'Diabetes',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Diabetes')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Blood Pressure',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Blood Pressure')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Nebulizer',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Nebulizer')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Hair Removal',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Hair Removal')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Massagers',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Massagers')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Special Needs',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Special Needs')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Thermometers',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Thermometers')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Scales',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Equipment')
                    .collection('Scales')
                    .snapshots(),
                // ignore: missing_return
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context, index) => buildBreakingNews(
                          context, snapshot.data.documents[index]),
                    );
                  }
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/loading.gif'),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildBreakingNews(BuildContext context, DocumentSnapshot document) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 90,
              child: Image.asset(
                'images/tooth.jpg',
              ),
            ),
            Expanded(
              child: Text('Panadol Advance 48 tabs'),
            ),
          ],
        ),
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurpleAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
