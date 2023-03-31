import 'package:flutter/material.dart';

import '../data.dart';

class CustomSliver extends StatelessWidget {
  const CustomSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: true,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset('images/YouTube_Logo.png'),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.cast), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(
              iconSize: 40,
              icon: CircleAvatar(
                foregroundImage: NetworkImage(currentUser.profileImage),
              ),
              onPressed: () {})
        ]);
  }
}
