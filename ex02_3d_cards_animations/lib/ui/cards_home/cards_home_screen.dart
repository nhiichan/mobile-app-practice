import 'package:flutter/material.dart';

import 'widgets/cards_body.dart';
import 'widgets/cards_horizontal.dart';

class CardsHomeScreen extends StatelessWidget {
  const CardsHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black87,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'My Playlist',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: const [
          Expanded(
            flex: 3,
            child: CardsBody(),
          ),
          Expanded(
            flex: 2,
            child: CardsHorizontal(),
          ),
        ],
      ),
    );
  }
}
