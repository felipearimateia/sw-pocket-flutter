// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FilmResponse _$FilmResponseFromJson(Map<String, dynamic> json) {
  return FilmResponse(
    json['title'] as String,
    json['episode_id'] as int,
    json['opening_crawl'] as String,
    json['release_date'] as String,
  );
}

Map<String, dynamic> _$FilmResponseToJson(FilmResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'episode_id': instance.episodeId,
      'opening_crawl': instance.openingCrawl,
      'release_date': instance.releaseDate,
    };

FilmsResponse _$FilmsResponseFromJson(Map<String, dynamic> json) {
  return FilmsResponse(
    json['count'] as int,
    json['next'] as String,
    json['previous'] as String,
    (json['results'] as List)
        ?.map((e) =>
            e == null ? null : FilmResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$FilmsResponseToJson(FilmsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
