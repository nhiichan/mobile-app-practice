import 'dart:math';
import 'dart:ui';

import 'package:ex02_3d_cards_animations/models/card_3d.dart';
import 'package:flutter/material.dart';

import 'card_3d_widget.dart';

class Card3DItem extends AnimatedWidget {
  const Card3DItem({
    Key? key,
    required this.card,
    required this.percent,
    required this.height,
    required this.depth,
    required this.onCardSelected,
    this.verticalFactor = 0,
    required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  final Card3D card;
  final double percent;
  final double height;
  final int depth;
  final ValueChanged<Card3D> onCardSelected;
  final int verticalFactor;

  Animation<double> get animation => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    const depthFactor = 50.0;
    final bottomMargin = height / 4.0;
    return Positioned(
      left: 0,
      right: 0,
      top: height + -depth * height / 2.0 * percent - bottomMargin,
      child: Opacity(
        opacity: verticalFactor == 0 ? 1.0 : 1 - animation.value,
        child: Hero(
          tag: card.title, // unique
          flightShuttleBuilder: (context, animation, flightDirection,
              fromHeroContext, toHeroContext) {
            Widget _current;
            if (flightDirection == HeroFlightDirection.push) {
              _current = toHeroContext.widget;
            } else {
              _current = fromHeroContext.widget;
            }

            // final newValue = lerpDouble(0.0, 2 * pi, animation.value);
            // Nếu để như này thì ban đầu cái newValue này không thay đổi tí nào

            return AnimatedBuilder(
              animation: animation,
              builder: (context, _) {
                final newValue = lerpDouble(0.0, 2 * pi, animation.value);
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateX(newValue!),
                  child: _current,
                );
              },
            );
          },
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..translate(
                0.0,
                verticalFactor * animation.value * deviceSize.height,
                depth * depthFactor,
              ),
            // Khiến cho những thằng phía sau nhỏ dần!
            child: GestureDetector(
              onTap: () {
                onCardSelected(card);
              },
              child: SizedBox(
                height: height,
                child: Card3DWidget(card: card),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
