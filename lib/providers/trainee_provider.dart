import 'package:capstone_frontend/models/performace.dart';
import 'package:capstone_frontend/models/trainee.dart';
import 'package:capstone_frontend/services/trainee_service.dart';
import 'package:capstone_frontend/widgets/generic/change_theme_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TraineeProvider extends ChangeNotifier {
  late Trainee trainee;
  late List<Performace> performances = [];
  List<BarChartGroupData> list = [];

  Future<Trainee> editProfile({required Trainee trainee}) async {
    Trainee updatedTrainee =
        await TraineeService().editProfile(trainee: trainee);
    notifyListeners();
    return updatedTrainee;
  }

  Future<Trainee> getProfile() async {
    trainee = await TraineeService().getProfile();
    return trainee;
  }

  Future<List<BarChartGroupData>> getPreformance() async {
    performances = await TraineeService().getPreformance();
    var count = 0;
    List<BarChartGroupData> data_list = [];
    for (var item in performances) {
      count = count + 1;
      BarChartGroupData data = BarChartGroupData(x: count, barRods: [
        BarChartRodData(
            fromY: 0,
            width: 15,
            color: Colors.amber,
            toY: item.active_calories!.toDouble()),
      ]);
      data_list.add(data);
    }
    list = data_list;
    return list;
  }
}
