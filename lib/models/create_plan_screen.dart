import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sqflite/sqflite.dart';

class CreatePlan extends StatefulWidget {
  @override
  _CreatePlanState createState() => _CreatePlanState();
}

class _CreatePlanState extends State<CreatePlan> {
  TextEditingController u = TextEditingController(); // username
  TextEditingController p = TextEditingController(); // password
  TextEditingController e = TextEditingController();

  String _planname;
  String dropdownValue = 'Stretches';
  String _exercisename;
  String dropdownSetVal = '1';
  String dropdownRepVal = '1';

  List<int> items = [];

  @override
  void initState() {
    items = List.generate(1, (i) {
      return i;
    });
    super.initState();
  }

  Widget listViewItem({int index}) {
    //widget layout for listview items
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                initialValue: _exercisename,
                style: TextStyle(color: Colors.white),
                controller: e,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Color.fromRGBO(41, 67, 78, 1),
                  filled: true,
                  hintText: "Exercise name",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                ),
                validator: (String value) {
                  if (value.isEmpty) {
                    return "Exercise name is required";
                  }

                  return null;
                },
                onSaved: (String value) {
                  _planname = value;
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Sets: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    DropdownButton<String>(
                      value: dropdownSetVal,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(30, 50, 56, 1),
                      ),
                      iconSize: 30,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(30, 50, 56, 1)),
                      underline: Container(
                        height: 2,
                        color: Color.fromRGBO(30, 50, 56, 1),
                      ),
                      items: <String>['1', '2', '3', '4', '5', '6', '7', '8']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownSetVal = newValue;
                        });
                      },
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Reps: ",
                      style: TextStyle(color: Colors.white),
                    ),
                    DropdownButton<String>(
                      value: dropdownRepVal,
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(30, 50, 56, 1),
                      ),
                      iconSize: 30,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(30, 50, 56, 1)),
                      underline: Container(
                        height: 2,
                        color: Color.fromRGBO(30, 50, 56, 1),
                      ),
                      items: <String>[
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        '10',
                        '11',
                        '12',
                        '13',
                        '14',
                        '15',
                        '16',
                        '17',
                        '18',
                        '19',
                        '20',
                        '21',
                        '22',
                        '23',
                        '24',
                        '25'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownRepVal = newValue;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("New Workout"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextFormField(
                  key: Key("create-plan-name-text"),
                  initialValue: _planname,
                  style: TextStyle(color: Colors.white),
                  controller: u,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromRGBO(41, 67, 78, 1),
                    filled: true,
                    hintText: "Workout name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Workout name is required";
                    }

                    return null;
                  },
                  onSaved: (String value) {
                    _planname = value;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Workout Type',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromRGBO(30, 50, 56, 1),
                          ),
                          iconSize: 30,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(30, 50, 56, 1)),
                          underline: Container(
                            height: 2,
                            color: Color.fromRGBO(30, 50, 56, 1),
                          ),
                          items: <String>[
                            'Stretches',
                            'Aerobics',
                            'Weight-lifting'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                        )),
                  ]),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SizedBox(
                  height: 20,
                  child: new ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: items.length,
                    itemBuilder: (context, i) {
                      return listViewItem(index: i);
                    },
                  ),
                ),
              ),
              FloatingActionButton(
                child: Icon(Icons.add_circle_outline),
                backgroundColor: Color.fromRGBO(30, 50, 56, 1),
                onPressed: () {
                  setState(() {
                    items.add(items.length);
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: RaisedButton(
                  color: Color.fromRGBO(30, 50, 56, 1),
                  disabledTextColor: Colors.black,
                  textColor: Colors.white,
                  child: Text(
                    "Create",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('create-plan-start-button'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              )
            ])));
  }
}
