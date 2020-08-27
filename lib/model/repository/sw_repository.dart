import 'package:sw_pocket/model/data/response/film_response.dart';
import 'package:sw_pocket/model/network/sw_service.dart';

class SWDataSource {
  // ignore: missing_return
  Future<FilmsResponse> getFilms() async {}
}

class SWRepository implements SWDataSource {
  final SWService service;

  SWRepository(this.service);

  @override
  Future<FilmsResponse> getFilms() {
    return service.getFilms();
  }
}
