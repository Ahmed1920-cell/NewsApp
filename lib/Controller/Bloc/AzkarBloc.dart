import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

import '../../API.dart';
import '../../model/Artical.dart';
import 'AzkarState.dart';
class NewsCubit extends Cubit<NewsState>{
  List<ArticalModel>? data=[];
  NewsCubit():super(InstialState());

  getnews({required String category})async{
    try{
  emit(Load());
  data=await api(Dio()).getNews(category: category);
  emit(Done());}
        catch(e){
      emit(Error(error: e.toString()));
        }

}

}