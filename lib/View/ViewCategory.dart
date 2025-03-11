import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Controller/Bloc/AzkarBloc.dart';
import 'package:news_app/View/home.dart';
import 'package:news_app/widget/ColumListView.dart';

import '../Controller/Bloc/AzkarState.dart';

class Viewcategory extends StatelessWidget {
   Viewcategory({super.key,required this.title});
String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),(route)=> false,
                ).then((_) {
                  context.read<NewsCubit>().emit(InstialState()); // Reset state after returning
                });
              }, icon: Icon(Icons.arrow_back)),
              Spacer(),
              Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 15,),
              Spacer(),
            ],
          ),
          Expanded(child: Columlistview(category: title.toLowerCase(),)),
        ],
      ),
    );
  }
}
