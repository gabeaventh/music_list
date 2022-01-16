import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// [MusicListShimmer] is a widget that shows a shimmer effect on the music list.
/// It is used to show a loading effect while the music list is being fetched.
class MusicListShimmer extends StatelessWidget {
  const MusicListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (_, __) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: ListTile(
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            title: Container(
              width: double.infinity,
              height: 8.0,
              color: Colors.white,
            ),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 8.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 40,
                  height: 8.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
