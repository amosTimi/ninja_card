import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaIdCard(),
  ));
}

class NinjaIdCard extends StatefulWidget {
  @override
  _NinjaIdCardState createState() => _NinjaIdCardState();
}

class _NinjaIdCardState extends State<NinjaIdCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[500],
        child: Icon(Icons.add,
        color: Colors.grey[800]),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                //backgroundColor: Colors.amberAccent,
                backgroundImage: AssetImage('assets/amoslee.jpeg'),
                radius: 50.0,
                backgroundColor: Colors.transparent,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[700],
            ),
            Text('NAME',
            style: TextStyle(
              color: Colors.grey[400],
              letterSpacing: 2.0,
            )),
            SizedBox(height: 10.0),
            Text('Amos-Lee',
            style: TextStyle(
              color: Colors.amberAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
          )),
            SizedBox(height: 20.0),
            Text('Current Ninja Status',
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 10.0),
            Text('$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email_rounded,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text('amos-lee@ninja.co.uk',
                style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 1.0,
                ))
              ]
            )
          ]
        )
      ),
    );
  }
}
