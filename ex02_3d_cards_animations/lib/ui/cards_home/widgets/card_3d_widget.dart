import 'package:ex02_3d_cards_animations/models/card_3d.dart';
import 'package:flutter/material.dart';

class Card3DWidget extends StatelessWidget {
  const Card3DWidget({
    Key? key,
    required this.card,
  }) : super(key: key);

  final Card3D card;

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(15);
    return PhysicalModel(
      elevation: 10, // Tạo ra cái elevation cho widget => Không cần là Card
      borderRadius: border,
      color: Colors.white,
      child: ClipRRect(
        borderRadius: border,
        child: Image.asset(
          card.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}