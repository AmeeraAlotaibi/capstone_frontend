import 'package:capstone_frontend/models/category.dart';
import 'package:capstone_frontend/models/exercise.dart';
import 'package:capstone_frontend/services/client.dart';
import 'package:dio/dio.dart';

class CategoryService {
  List<Category> categories = [];
  List<Exercise> exercises = [];
 Future<List<Category>> getCategories() async {
    try {
      Response res = await Client.dio.get(
        "categories/",
      );
      categories = (res.data as List)
          .map((workout) => Category.fromJson(workout))
          .toList();
      // print(categories[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return categories;
  }
 Future<List<Exercise>> getExercises(int categoryId) async {
    try {
      Response res = await Client.dio.get(
        "samples/?category_id=$categoryId",
      );
      exercises = (res.data as List)
          .map((workout) => Exercise.fromJson(workout))
          .toList();
      // print(exercises[0].image);
    } on DioError catch (error) {
      print(error);
    }
    return exercises;
  }
  
}
