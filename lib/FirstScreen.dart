import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FireBaseTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return new Center(child: new CircularProgressIndicator());
            default:
              return Scaffold(
                appBar: AppBar(
                  title: Text('First screen'),
                ),
                body: Center(
                  child: Text(snapshot.data.documents[0].data.values.elementAt(0),
                      style: TextStyle(color: Colors.white, fontSize: 30.0)),
                ),
                backgroundColor: Color.fromRGBO(200, 200, 200, 0.2),
              );
          }
        });
  }
}
