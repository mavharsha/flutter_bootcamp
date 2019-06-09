import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('images/avatar.jpeg'),
              ),
              Text(
                'Sree Harsha Mamilla',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.teal.shade100,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade400,
                      ),
                      title: Text('+1 925-967-4678', style: TextStyle(
                        color: Colors.teal.shade400,
                        fontSize: 20.0,
                        fontFamily: 'SourceSansPro',
                      ),)
                  ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.web,
                      color: Colors.teal.shade400,
                    ),
                    title: Text('mavharsha.dev', style: TextStyle(
                      color: Colors.teal.shade400,
                      fontSize: 20.0,
                      fontFamily: 'SourceSansPro',
                    ),),
                  )
                ),
            ],
          ),
        )),
      ),
    );
  }
}

/*
Row(
*/
/*verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.start,*/ /*

crossAxisAlignment: CrossAxisAlignment.stretch,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: <Widget>[
Container(
width: 100.0,
child: Text("Container 1"),
color: Colors.orange,
),
Column(
mainAxisAlignment: MainAxisAlignment.center,
children: <Widget>[
Container(
width: 100.0,
height: 100.00,
child: Text("Container 2"),
color: Colors.white,
),
Container(
width: 100.0,
height: 100.00,
child: Text("Container 3"),
color: Colors.blue,
),
],
),
Container(
width: 100.0,
child: Text("Container 4"),
color: Colors.green,
),
],
),*/

/*
Row(
children: <Widget>[
Icon(
Icons.web,
color: Colors.teal.shade400,
),
SizedBox(width: 10.0,),
Text('mavharsha.dev', style: TextStyle(
color: Colors.teal.shade400,
fontSize: 20.0,
fontFamily: 'SourceSansPro',
),)
],
),*/
