import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.green,
        primaryColor: const Color(0xFF34910f),
        accentColor: const Color(0xFF265e11),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('App Name'),
      ),
      body:
      new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "The question should go here\n\n",
                    style: new TextStyle(fontSize:16.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight. w200,
                        fontFamily: "Roboto"),
                  )
                ]

            ),

            new Radio(key:null, groupValue: null, value: .5, onChanged: radioChanged),


            new Radio(key:null, groupValue: null, value: .5, onChanged: radioChanged),

            new Radio(key:null, groupValue: null, value: .5, onChanged: radioChanged),

            new Radio(key:null, groupValue: null, value: .5, onChanged: radioChanged)
          ]

      ),

      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: const Icon(Icons.skip_previous),
              title: new Text('Previous'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.publish),
              title: new Text('Submit'),
            ),

            new BottomNavigationBarItem(
              icon: const Icon(Icons.skip_next),
              title: new Text('Next'),
            )
          ]

      ),
    );
  }
  void radioChanged(double value) {

  }

  void fabPressed() {}

}