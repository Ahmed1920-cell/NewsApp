import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/model/Artical.dart';
import '../Controller/Bloc/AzkarBloc.dart';
import '../Controller/Bloc/AzkarState.dart';
import 'ColumText.dart';

class Columlistview extends StatefulWidget {
   Columlistview({super.key, this.category="general"});
String category;
  @override
  State<Columlistview> createState() => _ColumlistviewState();
}

class _ColumlistviewState extends State<Columlistview> {
  List<ArticalModel> data=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<NewsCubit>(context).getnews(category: widget.category);
  }
  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<NewsCubit,NewsState>(builder: (context,state){
        if(state is Load){
          return Center(child: CircularProgressIndicator());
        }
        else if (state is Error){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Please connect your internet and try again",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black),),
                IconButton(onPressed: (){

                }, icon: Icon(Icons.refresh))
              ],
            ),
          );
        }
        else{
          data=BlocProvider.of<NewsCubit>(context).data!;
          print(data.length);
          return ListView.builder(
             physics: BouncingScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context,index){
                return Columtext(image: data[index].urlToImage, text:data[index].title ,describtion:data[index].title ,);
              }
          );}
      });




  }
}
