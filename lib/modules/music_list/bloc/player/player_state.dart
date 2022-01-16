part of 'player_bloc.dart';

/// [MusicPlayerState] is the state of the [MusicPlayerBloc]
@freezed
class MusicPlayerState with _$MusicPlayerState {
  const factory MusicPlayerState.initial() = MusicInitial;
  const factory MusicPlayerState.playing({Music? music}) = MusicPlaying;
  const factory MusicPlayerState.paused({Music? music}) = MusicPaused;
  const factory MusicPlayerState.stopped() = MusicStopped;
}
