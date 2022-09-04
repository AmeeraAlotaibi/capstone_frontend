import 'package:capstone_frontend/models/category.dart';
import 'package:capstone_frontend/models/exercise.dart';
import 'package:capstone_frontend/services/category_service.dart';
import 'package:flutter/material.dart';

class CategoryProvider extends ChangeNotifier {
  List<Category> categories = [];
  List<Exercise> exercises = [];
  // get all categorys
  Future<List<Category>> getCategories() async {
    categories = await CategoryService().getCategories();
    return categories;
  }
  Future<List<Exercise>> getExercises(int categoryId ) async {
    exercises = await CategoryService().getExercises(categoryId);
    return exercises;
  }
  
}
