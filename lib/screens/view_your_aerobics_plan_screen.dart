import 'package:flutter/material.dart';

class YourAerobicsPlans extends StatefulWidget {
  @override
  _YourAerobicsPlans createState() => _YourAerobicsPlans();
}

class _YourAerobicsPlans extends State<YourAerobicsPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("View Aerobics Plans"),
          key: Key("your-aerobics-plans-text"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ));
  }
}
