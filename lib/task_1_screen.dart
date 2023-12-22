import 'package:flutter/material.dart';

class Task1Screen extends StatelessWidget {
  const Task1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        titleSpacing: 16,
        title: const Text('Where do you \nwant to discover?'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 64,
              child: ColoredBox(color: Colors.amber, child: Text('A')),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: SizedBox(),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            label: 'explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_outline),
            label: 'bookmark',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outlined),
            label: 'profile',
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
          Stack(
            children: [],
          )
        ],
      ),
    );
  }
}
