// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sw_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _SWService implements SWService {
  _SWService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://swapi.dev';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getFilms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/api/films',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = FilmsResponse.fromJson(_result.data);
    return value;
  }
}
