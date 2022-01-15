import 'package:dartz/dartz.dart';
import 'package:music_player/core/core_service.dart';
import 'package:music_player/core/network/error/network_error.dart';
import 'package:music_player/core/network/network_model.dart';

class MusicListService extends CoreRestService {
  Future<Either<NetworkModel, NetworkError>> searchByArtist(String artist) {
    return network.get(
      path: '/search',
      queryParameters: {
        "term": artist,
        "media": "music",
      },
    );
  }
}
