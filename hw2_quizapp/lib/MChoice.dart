import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Multiple Choice"),
          ),
          body: SafeArea(
              child : Center(

                child:RadioGroup(),

              )
          )
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class OptionsList {
  String name;
  int index;
  OptionsList({this.name, this.index});
}

class RadioGroupWidget extends State {

  // Default Radio Button Item
  String radioItem = 'Question: Multiple choice';

  // Group Value for Radio Button.
  int id = 0;

  List<OptionsList> fList = [
    OptionsList(
      index: 1,
      name: "Option 1",
    ),
    OptionsList(
      index: 2,
      name: "Option 2",
    ),
    OptionsList(
      index: 3,
      name: "Option 3",
    ),
    OptionsList(
      index: 4,
      name: "Option 4",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding : EdgeInsets.all(14.0),
            child: Text('$radioItem', style: TextStyle(fontSize: 23))
        ),

        Expanded(
            child: Container(
              height: 350.0,
              child: Column(
                children:
                fList.map((data) => RadioListTile(
                  title: Text("${data.name}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItem = data.name ;
                      id = data.index;
                    });
                  },
                )).toList(),
              ),
            )),

      ],
    );
  }
}