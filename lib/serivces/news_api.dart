import 'package:bicsom_task/model/response_model.dart';
import 'package:dio/dio.dart';

class NewsApi {
  //Initializing base URL
  final String baseURL =
      'https://newsapi.org/v2/top-headlines?country=us&category=sports';
  Dio _dio = Dio();

  NewsApi() {
    //Initializing headers
    _dio.options.headers['Content-Type'] = 'application/json';

    _dio.options.headers['X-Api-Key'] =
        '89f673e5bb764c75b27c55a23caaaf6f'; //Replace with your API Key
  }

  //Getting the sport filtered news
  Future<ResponseModel> getSportsNews() async {
    try {
      Response response = await _dio.get(
        baseURL,
      );
      return ResponseModel.fromJson(
          code: response.statusCode, json: response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return ResponseModel.withException(
          code: 400,
          json: {'status': '$error', 'message': 'Something went wrong'});
    }
  }
}
