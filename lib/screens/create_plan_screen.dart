import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CreatePlan extends StatefulWidget {
  @override
  _CreatePlanState createState() => _CreatePlanState();
}

class _CreatePlanState extends State<CreatePlan> {
  TextEditingController u = TextEditingController(); // username
  TextEditingController p = TextEditingController(); // password

  String _planname;
  String dropdownValue = 'Stretches';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("New Plan"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
            child: Column(
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
                    hintText: "Plan name",
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(84, 110, 122, 1), fontSize: 20),
                  ),
                  validator: (String value) {
                    if (value.isEmpty) {
                      return "Plan name is required";
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
                      'Plan Type',
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
                height: 50,
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
                    "Create Plan",
                    style: TextStyle(fontSize: 20),
                  ),
                  key: Key('create-plan-start-button'),
                  onPressed: () {},
                ),
              ),
            ])));
  }
}