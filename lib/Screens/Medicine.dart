import 'package:alawda_pharmacy/Screens/OpenProduct.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class Medicine extends StatelessWidget {
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
                'Allergy & Asthma',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Allergy & Asthma')
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
                'Anti Acids',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Anti-Acids')
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
                'Cough, Cold & Flu',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Cough, Cold & Flu')
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
                    .document('medicine')
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
                'Digestive System',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Digestive System')
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
                'Dyslipidemia',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Dyslipidemia')
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
                'ENT',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('ENT')
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
                'Eye Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Eye Care')
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
                'Feminine Care',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Feminine Care')
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
                'Gout Disease',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Gout Disease')
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
                'Heart & Blood vessels',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Heart & Blood vessels')
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
                'Hemorrhoids',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Hemorrhoids')
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
                'Hypertension',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Hypertension')
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
                'Joint & Muscles',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Joint & Muscles')
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
                'Thyroid Disorders',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Thyroid Disorders')
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
                'Motion sickness & Nausea',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Motion sickness & Nausea')
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
                'Pain Relief',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('pain_relief')
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
                'Smoking cessation',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Smoking cessation')
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
                'Urinary Tract System',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: StreamBuilder<QuerySnapshot>(
                stream: fireStore
                    .collection('storage')
                    .document('medicine')
                    .collection('Urinary Tract System')
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
      child: InkWell(
        onTap: () {
          print('${document.data['price']}');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OpenProduct(
                name: '${document.data['name']}',
                image: '${document.data['image']}',
                price: "${document.data['price']}",
                description: '${document.data['description']},',
              ),
            ),
          );
        },
        child: Container(
          child: Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 90,
                child: Image.network('${document.data['image']}'),
              ),
              Expanded(
                child: Text('${document.data['name']}'),
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
      ),
    );
  }
}
