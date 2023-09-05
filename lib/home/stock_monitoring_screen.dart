import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';

import '../../provider/monitoring_provider.dart';
class StockMonitoringScreen extends StatefulWidget {
  const StockMonitoringScreen({Key? key}) : super(key: key);

  @override
  State<StockMonitoringScreen> createState() => _StockMonitoringScreenState();
}

class _StockMonitoringScreenState extends State<StockMonitoringScreen> {
  @override



  Widget build(BuildContext context) {
    final getData= Provider.of<monitoringProvider>(context).ListMap;
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(height: 30,) ,
            PieChart(
              dataMap: getData,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32,
              chartRadius: MediaQuery.of(context).size.width / 3.2,
              colorList: [
                Colors.red , Colors.purple ,Colors.blue,Colors.orange,

              ],
              initialAngleInDegree: 0,
              chartType: ChartType.disc,
              ringStrokeWidth: 32,
              centerText: "AAb",
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: true,
                legendShape: BoxShape.circle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: true,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            ) ,
          ],
        ),
      ),
    );
  }
}
