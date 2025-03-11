import 'package:dio/dio.dart';
import 'model/Artical.dart';

class api{
  Dio dio;
  api(this.dio);
 getNews({required String category}) async{
var response=await dio.get("https://newsapi.org/v2/top-headlines",
queryParameters: {
  "country":"us",
  "apiKey":"79254253f923401a81768a38aa3d7ec7",
  "category":category
}
);
var arcticales=response.data["articles"];
List<ArticalModel> data=[];
for(var arcticale in arcticales){
  ArticalModel category=ArticalModel(urlToImage: arcticale["urlToImage"], title: arcticale["title"], description: arcticale["description"]);
  data.add(category);
}
return data;
  }
}