import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:music_player/models/music.dart';
import 'package:music_player/modules/music_list/bloc/player/player_bloc.dart';

void main() {
  late MusicPlayerBloc bloc;
  late MusicPlayerState state;
  late Music music;

  setUp(() {
    bloc = MusicPlayerBloc();
    state = MusicPlayerState.initial();
    music = Music.fromJson({
      "wrapperType": "track",
      "kind": "song",
      "artistId": 1203816887,
      "collectionId": 1555401119,
      "trackId": 1555401122,
      "artistName": "TWICE",
      "collectionName": "Twicecoaster: Lane 1",
      "trackName": "TT",
      "collectionCensoredName": "Twicecoaster: Lane 1",
      "trackCensoredName": "TT",
      "artistViewUrl":
          "https://music.apple.com/us/artist/twice/1203816887?uo=4",
      "collectionViewUrl":
          "https://music.apple.com/us/album/tt/1555401119?i=1555401122&uo=4",
      "trackViewUrl":
          "https://music.apple.com/us/album/tt/1555401119?i=1555401122&uo=4",
      "previewUrl":
          "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/41/bf/69/41bf694e-5469-1e06-f59d-8b7edb70a944/mzaf_12340905383479602572.plus.aac.p.m4a",
      "artworkUrl30":
          "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/30x30bb.jpg",
      "artworkUrl60":
          "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/60x60bb.jpg",
      "artworkUrl100":
          "https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/9b/5b/559b5bc3-f1e7-c4fc-7115-0a756f9e4eb0/source/100x100bb.jpg",
      "collectionPrice": 6.99,
      "trackPrice": 1.29,
      "releaseDate": "2016-10-24T12:00:00Z",
      "collectionExplicitness": "notExplicit",
      "trackExplicitness": "notExplicit",
      "discCount": 1,
      "discNumber": 1,
      "trackCount": 7,
      "trackNumber": 1,
      "trackTimeMillis": 212987,
      "country": "USA",
      "currency": "USD",
      "primaryGenreName": "K-Pop",
      "isStreamable": true
    });
  });
  tearDown(() {
    bloc.close();
  });

  test('Initial state is correct', () {
    expect(state, bloc.state);
  });

  blocTest(
    'Close doesn\'t emit new states',
    build: () => bloc,
    act: (_) => bloc.close(),
    expect: () => [],
  );

  group("MusicPlayerBloc", () {
    blocTest(
      "emits [MusicPlaying] when [MusicPlayerStart] is called",
      build: () => bloc,
      act: (_) {
        bloc.add(MusicPlayerStart(music: music));
      },
      expect: () => [
        MusicPlayerState.playing(music: music),
      ],
    );

    blocTest(
      "emits [MusicPaused] when [MusicPlayerPause] is called",
      build: () => bloc,
      act: (_) {
        bloc.emit(MusicPlayerState.playing(music: music));
        bloc.add(MusicPlayerPause(music: music));
      },
      expect: () => [
        MusicPlayerState.playing(music: music),
        MusicPlayerState.paused(music: music),
      ],
    );

    blocTest(
      "emits [MusicStopped] when [MusicPlayerStop] is called",
      build: () => bloc,
      act: (_) {
        bloc.add(MusicPlayerStop());
      },
      expect: () => [
        MusicPlayerState.stopped(),
      ],
    );
  });
}
