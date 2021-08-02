import 'package:flutter/material.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';

 var FAKE_DATA = [
  Category(id:1, content:'nem', color: Colors.amber),
  Category(id:2, content:'com', color: Colors.red),
  Category(id:3, content:'cha', color: Colors.green),
  Category(id:4, content:'bun', color: Colors.teal),
];

 var FAKE_FOOD = [
  Food(
      id: 1,
      name:'hieu 1',
      urlImage: 'https://image.thanhnien.vn/2048/uploaded/sontung/2021_06_24/2021-06-24t115703z_262439332_rc2z6o9ebiy0_rtrmadp_3_soccer-euro_cqme.jpg',
      duration: Duration(minutes: 25),
      complexity: 'kho',
      ingredients: ['muoi', 'mam', 'mi chinh'],
      categoryId:1,
  ),
  Food(
   id: 2,
   name:'hieu 2',
   urlImage: 'https://image.thanhnien.vn/2048/uploaded/sontung/2021_06_24/2021-06-24t115703z_262439332_rc2z6o9ebiy0_rtrmadp_3_soccer-euro_cqme.jpg',
   duration: Duration(minutes: 25),
   complexity: 'kho',
   ingredients: ['muoi', 'mam', 'mi chinh'],
   categoryId:1,
  ),
  Food(
   id: 3,
   name:'hieu 3',
   urlImage: 'https://image.thanhnien.vn/2048/uploaded/sontung/2021_06_24/2021-06-24t115703z_262439332_rc2z6o9ebiy0_rtrmadp_3_soccer-euro_cqme.jpg',
   duration: Duration(minutes: 25),
   complexity: 'kho',
   ingredients: ['muoi', 'mam', 'mi chinh'],
   categoryId:2,
  ),
  Food(
   id: 4,
   name:'hieu 4',
   urlImage: 'https://image.thanhnien.vn/2048/uploaded/sontung/2021_06_24/2021-06-24t115703z_262439332_rc2z6o9ebiy0_rtrmadp_3_soccer-euro_cqme.jpg',
   duration: Duration(minutes: 25),
   complexity: 'kho',
   ingredients: ['muoi', 'mam', 'mi chinh'],
   categoryId:3,
  ),
  // Food(
  //  id: 5,
  //  name:'hieu 5',
  //  urlImage: 'https://image.thanhnien.vn/2048/uploaded/sontung/2021_06_24/2021-06-24t115703z_262439332_rc2z6o9ebiy0_rtrmadp_3_soccer-euro_cqme.jpg',
  //  duration: Duration(minutes: 25),
  //  complexity: 'kho',
  //  ingredients: ['muoi', 'mam', 'mi chinh'],
  //  categoryId:4,
  // ),
 ];

