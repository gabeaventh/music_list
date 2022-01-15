import 'package:music_player/core/network/const.dart';
import 'package:music_player/core/network/error/error_type.dart';

class NetworkError {
  String message;
  NetworkErrorType type;

  NetworkError([
    this.message = NetworkConstant.unknownErrorMessage,
    this.type = NetworkErrorType.Undefined,
  ]);

  NetworkError copyWith({
    String? message,
    NetworkErrorType? type,
  }) {
    return NetworkError(
      message ?? this.message,
      type ?? this.type,
    );
  }

  @override
  String toString() => 'NetworkError(message: $message, type: $type)';
}
