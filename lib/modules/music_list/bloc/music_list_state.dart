part of 'music_list_bloc.dart';

@freezed
class MusicListState with _$MusicListState {
  const factory MusicListState.initial() = MusicListInitial;
  const factory MusicListState.loaded({ITunes? loadedData}) = MusicListLoaded;
  const factory MusicListState.error({NetworkError? error}) = MusicListError;
  const factory MusicListState.loading() = MusicListLoading;
}
