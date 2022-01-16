import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/models/music.dart';

part 'itunes.freezed.dart';
part 'itunes.g.dart';

/// ITunes class for storing the data from the iTunes API
/// with the help from Freezed and BuiltValue
@freezed
class ITunes with _$ITunes {
  factory ITunes({int? resultCount, List<Music>? results}) = _ITunes;
  factory ITunes.fromJson(Map<String, dynamic> json) => _$ITunesFromJson(json);
}
