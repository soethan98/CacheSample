import 'package:cache_sample/data/local/models/movie_db.dart';

 class Resource<T>{
   final T? data;
  final String? errorMsg;
  Resource({this.data,this.errorMsg});


  factory Resource.error({String? errorMsg}){
    return Resource<T>(errorMsg: errorMsg ,data: null);
  }

   factory Resource.success({T? data}){
    return Resource<T>(errorMsg: null ,data: data);
  }
}

// class SuccessSuccess<T> extends Resource<T> {
//   final T? dataResult;
//   SuccessSuccess({this.dataResult}):super(data: dataResult);

// }


// class ErrorError<T> extends Resource<T> {
//   final String? msg;
//   ErrorError({this.msg}):super(errorMsg: msg);

// }

