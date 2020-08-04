import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class SkinCare extends StatelessWidget {
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
                'Acne',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Acne')
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
                'Anti-aging Skin Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Anti-aging Skin Care')
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
                'Cleansers & Scrubs',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Cleansers & Scrubs')
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
                'Foot Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Foot Care')
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
                'Masks',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Masks')
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
                'Moisturizing Products',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Moisturizing Products')
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
                'Natural Skin Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Natural Skin Care')
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
                'Skin Treatments & Peels',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Skin Treatments & Peels')
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
                'Skin Care Tools',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Skin Care Tools')
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
                'Sun Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Sun Care')
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
                'Toners',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Toners')
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
                'Whitening Products',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('Skin Care')
                    .collection('Whitening Products')
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
