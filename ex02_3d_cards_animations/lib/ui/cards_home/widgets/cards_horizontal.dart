import 'package:ex02_3d_cards_animations/models/card_3d.dart';
import 'package:flutter/material.dart';

import 'card_3d_widget.dart';

class CardsHorizontal extends StatelessWidget {
  const CardsHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(12),
          child: Text('Recently Played'),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final card = card3DList[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Card3DWidget(card: card),
              );
            },
            itemCount: card3DList.length,
          ),
        ),
      ],
    );
  }
}