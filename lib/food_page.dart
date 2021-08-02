import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/fake_data.dart';
import 'package:foodapp/models/food.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'package:foodapp/detail_food_page.dart';
class FoodPage extends StatelessWidget {
  final Category category;
  FoodPage({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Food> foods = FAKE_FOOD.where((element) => element.categoryId == category.id).toList();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Danh sach mon an', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Ttim')),
        ),
      ),
      body:
        SafeArea(
          child: Center(
              child: Center(
                child: foods.length > 0 ? ListView.builder(
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      Food food = foods[index];
                      return InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => DetailFoodPage(detailFood: food)
                                )
                            );
                          },
                          splashColor: Colors.deepPurple,
                          child:
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: FadeInImage.assetNetwork(
                                      placeholder: cupertinoActivityIndicator,
                                      image: food.urlImage,
                                      placeholderScale: 1,
                                      fit: BoxFit.cover,
                                      // width: size.width,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 30,
                                  left: 30,
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.white, width: 2)
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.timer, color: Colors.white),
                                        Padding(padding: EdgeInsets.only(right: 10)),
                                        Text('${food.duration}', style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Ttim'),)
                                      ],
                                    ),
                                  )
                              ),
                              Positioned(
                                bottom: 30,
                                right: 30,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text('${food.name}', style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Ttim'),),
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ),
                            ],
                          )
                      );
                    }
                ) :
                Text('not found', style: TextStyle(fontSize: 30, fontFamily: 'Ttim', color: Colors.black),),
              )
          ),
        )
    );
  }
}