part of 'music_list_bloc.dart';

/// [MusicListEvent] is the event of the [MusicListBloc]
@freezed
class MusicListEvent with _$MusicListEvent {
  const factory MusicListEvent.searchByArtist({String? artist}) =
      SearchByArtist;
}
