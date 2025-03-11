import 'package:flutter/material.dart';
import 'package:news_app/View/ViewCategory.dart';
import '../model/catergory_model.dart';

class Image_container extends StatelessWidget {
  Image_container({super.key,required this.category});
  Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Viewcategory(title: category.text)));
      },
      child: Container(
        margin: EdgeInsets.all(8),
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(category.ImageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.4),
            child: Text(category.text,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)) /* add child content here */,
      ),
    );
  }
}
