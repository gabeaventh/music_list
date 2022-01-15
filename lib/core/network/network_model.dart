import 'package:music_player/core/core_service_data.dart';

class NetworkModel extends CoreServiceData {
  int? code;
  Map<String, dynamic>? response;

  NetworkModel({
    required this.code,
    required this.response,
  });
}
