import 'package:flutter/material.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Counter',
      debugShowCheckedModeBanner: false,
      home: new myHomePage(),
    );
  }

}

class myHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new myHomePageState();
  }

}

class myHomePageState extends State<myHomePage>{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text('NumCount',
          style: TextStyle(letterSpacing: 5),),
        ),
        backgroundColor: Colors.brown[500],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("🚀 Hi i'm $count",style: TextStyle(fontSize: 20),),
            new Text(""),
            new MaterialButton(
              textColor: Colors.white,
              height: 30,
              color: Colors.brown[500],
              animationDuration: Duration(seconds: 10),
              highlightColor: Colors.brown[300],
              child: new Center(
                child: new Text("Up ⬆",
                style: new TextStyle(color: Colors.white),),
              ),
              onPressed: (){
                setState(() {
                 ++count; 
                });
              },
            ),
          ],
        ),
      ),
    );
  }

}