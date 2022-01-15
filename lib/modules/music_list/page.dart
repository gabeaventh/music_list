import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_player/modules/music_list/bloc/music_list_bloc.dart';
import 'package:music_player/modules/music_list/initiator.dart';
import 'package:music_player/modules/music_list/view.dart';

class MusicListPage extends StatefulWidget {
  const MusicListPage({Key? key}) : super(key: key);

  @override
  _MusicListPageState createState() => _MusicListPageState();
}

class _MusicListPageState extends State<MusicListPage> {
  late MusicListInitiator _i;
  @override
  void initState() {
    _i = MusicListInitiator()..init(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _i.bloc,
      builder: (context, state) {
        if (state is MusicListLoaded) {
          print("TESTING " + state.loadedData!.results.toString());
        }
        return MusicListView();
      },
    );
  }
}
