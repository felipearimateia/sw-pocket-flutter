import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sw_pocket/model/data/response/film_response.dart';

part 'sw_service.g.dart';

@RestApi(baseUrl: "https://swapi.dev")
abstract class SWService {
  factory SWService(Dio dio, {String baseUrl}) = _SWService;

  @GET("/api/films")
  Future<FilmsResponse> getFilms();
}
