import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/API.dart';
import 'package:news_app/Controller/Bloc/AzkarBloc.dart';
import 'package:news_app/Controller/Bloc/AzkarState.dart';
import 'package:news_app/widget/Row_listView.dart';

import '../model/Artical.dart';
import '../model/catergory_model.dart';
import '../widget/ColumListView.dart';

class Home extends StatelessWidget {
   Home({super.key});

   List<Category> categories = [
     Category(
         ImageUrl: "assets/technology.jpeg", text: "Technology"),
     Category(ImageUrl: "assets/general.avif", text: "General"),
     Category(ImageUrl: "assets/sports.avif", text: "Sports"),
     Category(ImageUrl: "assets/health.avif", text: "Health"),
     Category(ImageUrl: "assets/science.avif", text: "Science"),
     Category(ImageUrl: "assets/business.avif", text: "Business"),
     Category(
         ImageUrl: "assets/entertaiment.avif", text: "Entertainment"),
  ];

   List<ArticalModel> data=[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("Cloud",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.yellow)),
          ],
        ),
      ),
      body: Column(
        children: [
          RowListview(categouries:categories),
          Expanded(child: Columlistview()),

        ],
      ),
    );
  }
}
