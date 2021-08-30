import '../models/food_model.dart';

class RecipeModel {
  late final String name;
  late final String imageUrl;
  late final List<FoodModel> recipeList;

  RecipeModel({
    required this.name,
    required this.imageUrl,
    required this.recipeList,
  });
}
