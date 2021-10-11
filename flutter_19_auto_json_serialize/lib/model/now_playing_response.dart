import 'package:flutter_19_auto_json_serialize/model/movie.dart';
import 'package:json_annotation/json_annotation.dart';

part 'now_playing_response.g.dart';

@JsonSerializable(explicitToJson: true)
class NowPlayingResponse {
  int page;
  @JsonKey(name: 'total_pages')
  int totalPages;
  @JsonKey(name: 'total_result')
  int totalResult;
  List<Movie> results;

  NowPlayingResponse(
      this.page, this.totalPages, this.totalResult, this.results);

  factory NowPlayingResponse.fromJson(Map<String, dynamic> data) =>
      _$NowPlayingResponseFromJson(data);

  Map<String, dynamic> toJson() => _$NowPlayingResponseToJson(this);
}
