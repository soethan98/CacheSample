



import 'package:cache_sample/data/network/api_exceptions.dart';
import 'package:cache_sample/domain/result.dart';

Future<Resource<ResultType>> networkBoundResource<ResultType,RequestType>({
  required  bool Function(ResultType) shouldFetch,
  required Future<RequestType> Function() createNetworkCall,
  required Future<ResultType> Function() loadFromDb,
  required Future<void> Function(RequestType) saveResult}) async {

    final data =  await loadFromDb();
    if(shouldFetch(data)){
      try {  
        final response =  await createNetworkCall();


        await saveResult(response);
        final dbResult = await loadFromDb();
        return  Resource<ResultType>.success(data: dbResult);
        } on AppException catch(e) {
          return  Resource<ResultType>.error(errorMsg:e.toString());
      }
    }
    return Resource<ResultType>.error(errorMsg:'Something went wrong');

  
  }



