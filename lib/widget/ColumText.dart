import 'package:flutter/material.dart';

class Columtext extends StatelessWidget {
  Columtext({super.key,required this.image,required this.text,required this.describtion});
String? image;
String? text;
  String? describtion;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xFFD9C3B6),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(image??"https://s.france24.com/media/display/e6279b3c-db08-11ee-b7f5-005056bf30b7/w:1280/p:16x9/news_en_1920x1080.jpg",width: double.infinity,height: 300,fit: BoxFit.cover,)),
    SizedBox(height: 8), // Add space between image and text
    Padding(
    padding: EdgeInsets.all(8),
    child: Column(
            children: [
              Text(text??"",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black),),
              Text(describtion??"",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey),),
            ],
          ))
        ],
      ),
    );
  }
}
