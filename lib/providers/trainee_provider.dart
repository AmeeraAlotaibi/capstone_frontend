import 'package:capstone_frontend/models/trainee.dart';
import 'package:capstone_frontend/services/trainee_service.dart';
import 'package:capstone_frontend/widgets/generic/change_theme_widget.dart';
import 'package:flutter/cupertino.dart';

class TraineeProvider extends ChangeNotifier {
  late Trainee trainee;
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
}
