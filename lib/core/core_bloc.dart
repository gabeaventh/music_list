import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/core/core_service_data.dart';
import 'package:music_player/core/helper/helper.dart';
import 'package:music_player/core/network/error/network_error.dart';

abstract class CoreServiceBloc<Event, State> extends Bloc<Event, State> {
  CoreServiceBloc(State initialState) : super(initialState);

  late State _prevState;

  State _errorState(NetworkError error, State prevState);

  Future<State> call<ResponseType extends CoreServiceData>({
    required Future<Either<ResponseType, NetworkError>> request,
    required Function(ResponseType result, State? prevState) successState,
    State? loadingState,
    State? Function(NetworkError error)? altErrState,
  }) async {
    _prevState = state;
    if (loadingState != null) return loadingState;

    try {
      return await request.then((foldable) {
        return foldable.fold(
          ((result) => successState(result, _prevState)),
          (networkError) => errorTypeHandling(
            networkError,
            altErrState,
          ),
        );
      });
    } catch (e, s) {
      if (e is! NetworkError) Helper.catchError(e, s);
      NetworkError _e = e is NetworkError ? e : NetworkError(e.toString());
      if (altErrState != null && altErrState(_e) != null) {
        return altErrState(_e)!;
      } else {
        return _errorState(NetworkError(e.toString()), _prevState);
      }
    }
  }

  State errorTypeHandling(
    NetworkError error,
    State? Function(NetworkError error)? alternativeError,
  ) {
    if (alternativeError != null && alternativeError(error) != null) {
      return alternativeError(error)!;
    }
    return _errorState(error, _prevState);
  }
}
