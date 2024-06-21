//import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  const MyChart({super.key});

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        titlesData: FlTitlesData(
          show: true,
          rightTitles: SideTitles(showTitles: false),
          topTitles: SideTitles(showTitles: false),
          bottomTitles: SideTitles(
            showTitles: true,
            reservedSize: 38,
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return '01';
                case 1:
                  return '02';
                case 2:
                  return '03';
                case 3:
                  return '04';
                case 4:
                  return '05';
                case 5:
                  return '06';
                case 6:
                  return '07';
                case 7:
                  return '08';
                default:
                  return '';
              }
            },
          ),
          leftTitles: SideTitles(
            showTitles: true,
            reservedSize: 38,
            getTitles: (value) {
              switch (value.toInt()) {
                case 0:
                  return '1K';
                case 2:
                  return '2K';
                case 3:
                  return '3K';
                case 4:
                  return '4K';
                case 5:
                  return '5K';
                default:
                  return '';
              }
            },
          ),
        ),
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
        barGroups: showingGroups(),
      ),
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(8, (i) {
    switch (i) {
      case 0:
        return makeGroupData(0, 2);
      case 1:
        return makeGroupData(1, 3);
      case 2:
        return makeGroupData(2, 2);
      case 3:
        return makeGroupData(3, 4.5);
      case 4:
        return makeGroupData(4, 3.8);
      case 5:
        return makeGroupData(5, 1.5);
      case 6:
        return makeGroupData(6, 4);
      case 7:
        return makeGroupData(7, 3.8);
      default:
        throw Error();
    }
  });

  BarChartGroupData makeGroupData(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          y: y,
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.tertiary,
          ],
          width: 20,
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            y: 5,
          ),
        ),
      ],
    );
  }
}

