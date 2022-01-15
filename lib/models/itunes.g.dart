// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ITunes _$$_ITunesFromJson(Map<String, dynamic> json) => _$_ITunes(
      resultCount: json['resultCount'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Music.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ITunesToJson(_$_ITunes instance) => <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };
