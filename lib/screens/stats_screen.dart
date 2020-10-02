import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

// Charts Class
class WeightChart {
  final String day;
  final int weight;
  final charts.Color color;

  WeightChart(this.day, this.weight, Color color)
      : this.color = charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    var data = [
      WeightChart('9/10', 190, Colors.white),
      WeightChart('9/11', 192, Colors.white),
      WeightChart('9/12', 188, Colors.white),
      WeightChart('9/13', 188, Colors.white),
      WeightChart('9/14', 186, Colors.white),
      WeightChart('9/15', 185, Colors.white),
      WeightChart('9/16', 188, Colors.white),
      WeightChart('9/17', 191, Colors.white),
      WeightChart('9/18', 190, Colors.white),
    ];

    var series = [
      charts.Series(
        domainFn: (WeightChart weightData, _) => weightData.day,
        measureFn: (WeightChart weightData, _) => weightData.weight,
        colorFn: (WeightChart weightData, _) => weightData.color,
        id: 'Weights',
        data: data,
      ),
    ];

    var chart = charts.BarChart(
      series,
      animate: true,
    );

    var chartWidget = Padding(
      padding: EdgeInsets.all(0.0),
      child: SizedBox(
        height: 150.0,
        child: chart,
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(84, 110, 122, 1),
        appBar: AppBar(
          title: Text("Statistics"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(30, 50, 56, 1),
          elevation: 0,
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20),
            children: [
              // Chart Block (Text Title, Chart)
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(41, 67, 78, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                      'Category Name',
                      key: Key('chart-title1'),
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    // Chart
                    chartWidget
                  ]
                ),
              ),
              // Chart Block (Text Title, Chart)
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(41, 67, 78, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                      'Category Name',
                      key: Key('chart-title1'),
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    
                  ]
                ),
              ),
              // Chart Block (Text Title, Chart)
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      color: Color.fromRGBO(41, 67, 78, 1),
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                      'Category Name',
                      key: Key('chart-title1'),
                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                    
                  ]
                ),
              ),
            ],
          ),
        )
    );
  }
}