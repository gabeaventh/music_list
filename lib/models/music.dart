// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'music.freezed.dart';
part 'music.g.dart';

/// Music class to store music data from ITunes API
/// with the help of freezed_annotation and Freezed library
@freezed
class Music with _$Music {
  factory Music({
    @JsonKey(name: "kind") String? kind,
    @JsonKey(name: "artisId") int? artistId,
    @JsonKey(name: "collectionId") int? collectionId,
    @JsonKey(name: "trackId") int? trackId,
    @JsonKey(name: "artistName") String? artistName,
    @JsonKey(name: "collectionName") String? collectionName,
    @JsonKey(name: "trackName") String? trackName,
    @JsonKey(name: "collectionCensoredName") String? collectionCensoredName,
    @JsonKey(name: "trackCensoredName") String? trackCensoredName,
    @JsonKey(name: "artistViewUrl") String? artistViewUrl,
    @JsonKey(name: "collectionViewUrl") String? collectionViewUrl,
    @JsonKey(name: "trackViewUrl") String? trackViewUrl,
    @JsonKey(name: "previewUrl") String? previewUrl,
    String? artworkUrl30,
    String? artworkUrl60,
    String? artworkUrl100,
    double? collectionPrice,
    double? trackPrice,
    String? releaseDate,
    String? collectionExplicitness,
    String? trackExplicitness,
    int? discCount,
    int? discNumber,
    int? trackCount,
    int? trackNumber,
    int? trackTimeMillis,
    String? country,
    String? currency,
    String? primaryGenreName,
    bool? isStreamable,
    String? collectionArtistName,
    String? contentAdvisoryRating,
  }) = _Music;

  factory Music.fromJson(Map<String, dynamic> json) => _$MusicFromJson(json);
}
