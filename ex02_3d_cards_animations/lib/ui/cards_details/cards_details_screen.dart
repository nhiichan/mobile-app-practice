import 'package:ex02_3d_cards_animations/models/card_3d.dart';
import 'package:ex02_3d_cards_animations/ui/cards_home/widgets/card_3d_widget.dart';
import 'package:flutter/material.dart';

class CardsDetails extends StatelessWidget {
  const CardsDetails({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Card3D card;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black45,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: deviceSize.height * 0.1,
          ),
          Align(
            child: SizedBox(
              height: 150,
              width: 150,
              child: Hero(
                tag: card.title, // connect
                child: Card3DWidget(card: card),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            card.title,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            card.author,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
