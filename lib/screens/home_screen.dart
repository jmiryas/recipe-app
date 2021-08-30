import 'package:flutter/material.dart';
import 'package:recipe_app/screens/food_list.dart';

import '../data/data.dart';
import '../screens/food_details.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentFoodIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.orange,
              margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
              child: Text(
                "Find Best Recipe For Cooking",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
            // color: Colors.blue,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(15.0)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        hintText: "Search destination ..."),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  child: Icon(Icons.sort, color: Colors.green.shade500),
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(15.0)),
                )
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Container(
              height: 50.0,
              // color: Colors.red,
              margin: EdgeInsets.only(bottom: 20.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    String food = foodList[index];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentFoodIndex = index;
                        });
                      },
                      child: Container(
                        width: 100.0,
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: index == currentFoodIndex
                                    ? Colors.green
                                    : Colors.grey.shade300,
                                width: 1.0),
                            color: index == currentFoodIndex
                                ? Colors.green
                                : Colors.white,
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: Text(food,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: index == currentFoodIndex
                                      ? Colors.white
                                      : Colors.grey.shade700,
                                  fontSize: 16.0)),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                  foodListHome.asMap().entries.map((item) {
            final currentFood = foodListHome[item.key];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => FoodList(
                              recipeModel: currentFood,
                            )));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Stack(
                  children: [
                    Container(
                      height: 350.0,
                      margin: EdgeInsets.only(bottom: 20.0),
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
                        child: Image(
                          image: AssetImage(currentFood.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        height: 350.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 1.0)
                          ],
                        )),
                    Positioned(
                        bottom: 70.0,
                        left: 20.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentFood.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 35.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                                "${currentFood.recipeList.length} ingredients | 20 min",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600))
                          ],
                        ))
                  ],
                ),
              ),
            );
          }).toList()))
        ],
      ),
    );
  }
}
