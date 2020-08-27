import 'package:json_annotation/json_annotation.dart';

part 'film_response.g.dart';

@JsonSerializable()
class FilmResponse {
  final String title;
  @JsonKey(name: 'episode_id')
  final int episodeId;
  @JsonKey(name: 'opening_crawl')
  final String openingCrawl;
  @JsonKey(name: 'release_date')
  final String releaseDate;

  FilmResponse(this.title, this.episodeId, this.openingCrawl, this.releaseDate);

  factory FilmResponse.fromJson(Map<String, dynamic> json) =>
      _$FilmResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FilmResponseToJson(this);
}

@JsonSerializable()
class FilmsResponse {
  final int count;
  @JsonKey(nullable: true)
  final String next;
  @JsonKey(nullable: true)
  final String previous;
  final List<FilmResponse> results;

  FilmsResponse(this.count, this.next, this.previous, this.results);

  factory FilmsResponse.fromJson(Map<String, dynamic> json) =>
      _$FilmsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FilmsResponseToJson(this);
}
