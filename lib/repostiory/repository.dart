import 'package:bicsom_task/model/response_model.dart';
import 'package:bicsom_task/serivces/news_api.dart';

class Repository {
  NewsApi appApiProvider = NewsApi();

  Future<ResponseModel> fetchSportsNews() => appApiProvider.getSportsNews();
}
