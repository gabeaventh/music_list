import 'package:flutter/material.dart';
import 'package:music_player/models/music.dart';

/// [MusicTile] is a widget that displays a [Music] object.
/// It is used in [MusicList] to display a list of [Music] objects.
/// It is also used in [MusicPlayer] to display the currently playing [Music] object.
class MusicTile extends StatelessWidget {
  final Music music;
  final void Function(Music) onTap;
  final bool isPlaying;
  const MusicTile({
    Key? key,
    required this.music,
    required this.isPlaying,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
              music.artworkUrl100 ?? "",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(music.trackName ?? ""),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(music.collectionName ?? ""),
          SizedBox(
            height: 5,
          ),
          Text(music.artistName ?? ""),
        ],
      ),
      isThreeLine: true,
      trailing: isPlaying ? Icon(Icons.volume_up) : null,
      onTap: () => onTap(music),
    );
  }
}
