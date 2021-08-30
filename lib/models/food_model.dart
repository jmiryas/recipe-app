import '../models/ingredient_model.dart';

class FoodModel {
  late final String name;
  late final String imageUrl;
  late final int serving;
  late final List<IngredientModel> ingredientList;

  FoodModel(
      {required this.name,
      required this.imageUrl,
      required this.serving,
      required this.ingredientList});
}
