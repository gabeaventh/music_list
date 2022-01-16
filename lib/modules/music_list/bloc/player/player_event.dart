part of 'player_bloc.dart';

@freezed
class MusicPlayerEvent with _$MusicPlayerEvent {
  const factory MusicPlayerEvent.start({Music? music}) = MusicPlayerStart;
  const factory MusicPlayerEvent.pause({Music? music}) = MusicPlayerPause;
  const factory MusicPlayerEvent.stop() = MusicPlayerStop;
}
