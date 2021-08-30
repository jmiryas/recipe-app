import 'package:flutter/material.dart';

import '../screens/food_details.dart';
import '../models/food_model.dart';
import '../models/recipe_model.dart';

class FoodList extends StatelessWidget {
  late final RecipeModel recipeModel;

  FoodList({required this.recipeModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Text(
                this.recipeModel.name,
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ],
          ),
          Expanded(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    FoodModel foodModel = this.recipeModel.recipeList[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    FoodDetails(foodModel: foodModel)));
                      },
                      child: ListTile(
                        leading: Hero(
                          tag: foodModel.imageUrl,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(foodModel.imageUrl),
                          ),
                        ),
                        title: Text(
                          foodModel.name,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text("Serving (${foodModel.serving})"),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: this.recipeModel.recipeList.length))
        ],
      ),
    ));
  }
}
