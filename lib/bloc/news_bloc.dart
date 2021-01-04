import 'package:bicsom_task/model/response_model.dart';
import 'package:bicsom_task/repostiory/repository.dart';
import 'package:rxdart/rxdart.dart';

class NewsBloc {
  Repository _repository = Repository();

  final _newsFetcher = PublishSubject<ResponseModel>();

  Stream<ResponseModel> get news => _newsFetcher.stream;

  fetchSportsNews() async {
    ResponseModel weatherResponse = await _repository.fetchSportsNews();
    _newsFetcher.sink.add(weatherResponse);
  }

  dispose() {
    _newsFetcher.close();
  }
}
