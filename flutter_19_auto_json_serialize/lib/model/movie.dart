import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  bool adult;
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  int id;
  @JsonKey(name: 'original_language')
  String originLang;
  @JsonKey(name: 'original_title')
  String originTitle;

  Movie(
      {required this.adult,
      required this.backdropPath,
      required this.id,
      required this.originLang,
      required this.originTitle});

  factory Movie.fromJson(Map<String, dynamic> data) => _$MovieFromJson(data);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
