import 'package:flutter/material.dart';
import 'package:recipe_app/models/ingredient_model.dart';

import '../models/food_model.dart';
import '../models/recipe_model.dart';

class FoodDetails extends StatelessWidget {
  late final FoodModel foodModel;

  FoodDetails({required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  Text(
                    this.foodModel.name,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200.0,
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0)
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Hero(
                  tag: this.foodModel.imageUrl,
                  child: Image(
                    image: AssetImage(this.foodModel.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.blue,
              height: 50.0,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ingredients (${this.foodModel.ingredientList.length})",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Row(
                        children: [
                          Text(
                            "4 serving",
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.expand_more, color: Colors.white)
                        ],
                      ))
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  this.foodModel.ingredientList.asMap().entries.map((item) {
            IngredientModel ingredientModel =
                this.foodModel.ingredientList[item.key];

            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(ingredientModel.imageUrl),
              ),
              title: Wrap(
                children: [
                  Text(
                    ingredientModel.name,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              trailing: Text(ingredientModel.takaran),
            );
          }).toList()))
        ],
      ),
    );
  }
}
