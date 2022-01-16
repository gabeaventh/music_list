import 'package:flutter/material.dart';

/// [MusicSearchBar] is a widget that is used to search music.
/// It is a [TextField] with a [IconButton] on the right side.
class MusicSearchBar extends StatelessWidget {
  final String? hintText;
  final TextEditingController searchController;
  final VoidCallback onSearch;
  const MusicSearchBar({
    Key? key,
    this.hintText = "Search...",
    required this.searchController,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Center(
          child: TextField(
            controller: searchController,
            onEditingComplete: onSearch,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: onSearch,
                icon: Icon(Icons.search),
              ),
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
