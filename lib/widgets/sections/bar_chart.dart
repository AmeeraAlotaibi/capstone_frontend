import 'package:capstone_frontend/providers/trainee_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarChartWidgte  extends StatelessWidget {
   BarChartWidgte ({ Key? key }) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
            future: context.watch<TraineeProvider>().getPreformance(),
            builder: (context, dataSnapshot) {
              if (dataSnapshot.connectionState == ConnectionState.waiting) {
                // loading skeleton
                return const Center(
                child: CircularProgressIndicator(),
              );
              } else {
                // start of future builder
                return Consumer<TraineeProvider>(
                  builder: ((context, prov, child) {
                  return   SizedBox(
                             height: 300,
                             width: 750,
                             child: BarChart(BarChartData(
                                  borderData: FlBorderData(
                                      border: const Border(
                                    top: BorderSide.none,
                                    right: BorderSide.none,
                                    left: BorderSide(width: 1),
                                    bottom: BorderSide(width: 1),
                                  )),
                                  groupsSpace: 10,
                                  barGroups: prov.list)),
                            );
                  }));}}),
    );
  }
}

 