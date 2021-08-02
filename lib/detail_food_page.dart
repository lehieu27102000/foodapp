import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import 'package:loading_gifs/loading_gifs.dart';
class DetailFoodPage extends StatelessWidget {
  Food detailFood;
  DetailFoodPage({required this.detailFood});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Cho tiet tung mon an', style: TextStyle(fontSize: 20, fontFamily: 'Ttim'),),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child:
              FadeInImage.assetNetwork(
                placeholder: cupertinoActivityIndicator,
                image: detailFood.urlImage,
                placeholderScale: 7,
              ),
            ),
            Expanded(
              child:
                ListView.builder(
                    itemCount: detailFood.ingredients.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}', style: TextStyle(fontSize: 20, fontFamily: 'Ttim'),),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        title: Text('${detailFood.ingredients[index]}', style: TextStyle(fontFamily: 'Ttim', fontSize: 20),),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}