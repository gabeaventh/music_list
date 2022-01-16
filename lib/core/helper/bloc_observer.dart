import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/core/logger/log.dart';

class BlocLogger extends BlocObserver {
  List<String> excludeBlocName;

  BlocLogger({this.excludeBlocName = const []});

  static const String TAG = 'BlocLogger';
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (!excludeBlocName.contains(_removeInstanceOf(bloc.toString()))) {
      Log.info(TAG, 'On Event: $event');
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    if (!excludeBlocName.contains(_removeInstanceOf(bloc.toString()))) {
      Log.info(TAG, 'On Transition: $transition');
    }
  }

  @override
  void onError(BlocBase cubit, Object error, StackTrace stacktrace) {
    super.onError(cubit, error, stacktrace);
    if (!excludeBlocName.contains(_removeInstanceOf(cubit.toString()))) {
      Log.warning(TAG, 'On Error: $error');
    }
  }

  String _removeInstanceOf(String val) {
    if (val.contains('Instance of')) return val.substring(13, val.length - 1);
    return val;
  }
}
