// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    adult: json['adult'] as bool,
    backdropPath: json['backdrop_path'] as String,
    id: json['id'] as int,
    originLang: json['original_language'] as String,
    originTitle: json['original_title'] as String,
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originLang,
      'original_title': instance.originTitle,
    };
