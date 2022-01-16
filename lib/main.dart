import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/core/helper/bloc_observer.dart';
import 'package:music_player/init.dart';

void main() {
  /// Override default [BlocObserver]
  BlocOverrides.runZoned(
    () {
      runApp(InitApp());
    },
    blocObserver: BlocLogger(),
  );
}
