import 'package:flutter/material.dart';

import 'image.dart';

class RowListview extends StatelessWidget {
   RowListview({super.key,required this.categouries});
List categouries;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: categouries.length,
          itemBuilder: (context,index){
            return Image_container(category:categouries[index] ,);


      }
      ),
    );
  }
}
