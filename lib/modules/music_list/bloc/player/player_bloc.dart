import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_player/models/music.dart';

part 'player_bloc.freezed.dart';
part 'player_event.dart';
part 'player_state.dart';

class MusicPlayerBloc extends Bloc<MusicPlayerEvent, MusicPlayerState> {
  MusicPlayerBloc() : super(MusicInitial()) {
    on<MusicPlayerStart>((event, emit) {
      emit(MusicPlayerState.playing(music: event.music));
    });
    on<MusicPlayerPause>((event, emit) {
      if (state is! MusicPlaying) return;
      MusicPlaying playing = state as MusicPlaying;
      emit(MusicPlayerState.paused(music: playing.music));
    });
    on<MusicPlayerStop>((event, emit) {
      emit(MusicPlayerState.stopped());
    });
  }
}
