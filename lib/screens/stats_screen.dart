import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

// Chart Classes

/// [Chart Data Class]
class TimeSeriesData {
  final DateTime time;
  final int data;

  TimeSeriesData(this.time, this.data);
}

/// [Time Series Chart Class]
class SimpleTimeSeriesChart {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleTimeSeriesChart(this.seriesList, {this.animate});

  /// [Sample Data Set for Testing]
  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesData, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesData(new DateTime(2017, 9, 1), 93),
      new TimeSeriesData(new DateTime(2017, 9, 2), 95),
      new TimeSeriesData(new DateTime(2017, 9, 3), 97),
      new TimeSeriesData(new DateTime(2017, 9, 4), 100),
      new TimeSeriesData(new DateTime(2017, 9, 5), 101),
      new TimeSeriesData(new DateTime(2017, 9, 6), 98),
      new TimeSeriesData(new DateTime(2017, 9, 7), 99),
      new TimeSeriesData(new DateTime(2017, 9, 8), 102),
      new TimeSeriesData(new DateTime(2017, 9, 9), 99),
      new TimeSeriesData(new DateTime(2017, 9, 10), 100),
      new TimeSeriesData(new DateTime(2017, 9, 11), 104),
      new TimeSeriesData(new DateTime(2017, 9, 12), 107),
      new TimeSeriesData(new DateTime(2017, 9, 13), 105),
      new TimeSeriesData(new DateTime(2017, 9, 14), 107),
      new TimeSeriesData(new DateTime(2017, 9, 15), 109),
    ];

    return [
      new charts.Series<TimeSeriesData, DateTime>(
        id: 'data',
        domainFn: (TimeSeriesData data, _) => data.time,
        measureFn: (TimeSeriesData data, _) => data.data,
        data: data,
      )
    ];
  }
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    // Set chart data
    List<charts.Series> seriesList = SimpleTimeSeriesChart._createSampleData();

    var chart = charts.TimeSeriesChart(
      seriesList,
      /// Reference: [https://github.com/google/charts/issues/117]
       
      /// [X-Axis Styling]
      domainAxis: new charts.DateTimeAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
                      // X-Axis Label Text Color
                      labelStyle: new charts.TextStyleSpec(
                        fontSize: 14,
                        color: charts.MaterialPalette.white,
                      ),
                      // For Vertical Gridlines
                      lineStyle: charts.LineStyleSpec(
                        color: charts.MaterialPalette.gray.shadeDefault,
                      )),
      ),

      /// [Y-Axis Styling]
      primaryMeasureAxis: new charts.NumericAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
                      // X-Axis Label Text Color
                      labelStyle: new charts.TextStyleSpec(
                        fontSize: 14,
                        color: charts.MaterialPalette.white,
                      ),
                      // For Vertical Gridlines
                      lineStyle: charts.LineStyleSpec(
                        color: charts.MaterialPalette.gray.shadeDefault,
                      )),
      ),
      animate: false,
      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );


    var chartWidget = Padding(
      padding: EdgeInsets.all(1.0),
      child: SizedBox(
        height: 150.0,
        width: 1000,
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
                    /// [Horizontal Scrolling]
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                        // Chart
                        /// [PLACEHOLDER] ///
                        chartWidget,
                      
                    )
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
                    /// [Horizontal Scrolling]
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                        // Chart
                        /// [PLACEHOLDER] ///
                        chartWidget,
                      
                    )
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
                    /// [Horizontal Scrolling]
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                        // Chart
                        /// [PLACEHOLDER] ///
                        chartWidget,
                      
                    )
                  ]
                ),
              ),
            ],
          ),
        )
    );
  }
}