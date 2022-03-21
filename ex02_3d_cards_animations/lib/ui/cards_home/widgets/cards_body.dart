import 'package:ex02_3d_cards_animations/models/card_3d.dart';
import 'package:ex02_3d_cards_animations/ui/cards_details/cards_details_screen.dart';
import 'package:flutter/material.dart';

import 'card_3d_item.dart';

class CardsBody extends StatefulWidget {
  const CardsBody({Key? key}) : super(key: key);

  @override
  State<CardsBody> createState() => _CardsBodyState();
}

class _CardsBodyState extends State<CardsBody> with TickerProviderStateMixin {
  bool _selectedMode = false;
  AnimationController? _animationControllerSelection;
  AnimationController? _animationControllerMovement;
  int? _selectedIndex;

  Future<void> _onCardSelected(Card3D card, int index) async {
    setState(() {
      _selectedIndex = index;
    });
    const duration = Duration(milliseconds: 750);
    _animationControllerMovement!.forward();
    await Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: duration,
      reverseTransitionDuration: duration,
      pageBuilder: (context, animation, _) => FadeTransition(
        opacity: animation,
        child: CardsDetails(card: card),
      ),
    ));
    _animationControllerMovement!.reverse();
  }

  int _getCurrentFactor(int currentIndex) {
    if (_selectedIndex == null || currentIndex == _selectedIndex) {
      return 0;
    }
    if (currentIndex > _selectedIndex!) {
      return -1;
    }
    return 1;
  }

  @override
  void initState() {
    _animationControllerSelection = AnimationController(
      vsync: this,
      lowerBound: 0.15,
      upperBound: 0.5,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
    _animationControllerMovement = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 880,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationControllerSelection!.dispose();
    _animationControllerMovement!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return AnimatedBuilder(
          animation: _animationControllerSelection!,
          builder: (BuildContext context, Widget? child) {
            final selectionValue = _animationControllerSelection!.value;
            return GestureDetector(
              onTap: () {
                if (!_selectedMode) {
                  _animationControllerSelection!.forward().whenComplete(() {
                    setState(() {
                      _selectedMode = !_selectedMode;
                    });
                  });
                } else {
                  _animationControllerSelection!.reverse().whenComplete(() {
                    setState(() {
                      _selectedMode = !_selectedMode;
                    });
                  });
                }
              },
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(selectionValue),
                // Xoay theo trục X - hướng vào, ra
                child: AbsorbPointer(
                  absorbing: !_selectedMode,
                  // Đưa cái này vào để khi tap vào thì nó chỉ tính là
                  // touch khi mà selectedMode đang ở true.
                  child: Container(
                    height: constraints.maxHeight,
                    width: constraints.maxWidth * 0.45,
                    color: Colors.white,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        ...List.generate(
                          4,
                          (index) => Card3DItem(
                            height: constraints.maxHeight / 2,
                            depth: index,
                            card: card3DList[index],
                            percent: selectionValue,
                            verticalFactor: _getCurrentFactor(index),
                            onCardSelected: (card) {
                              _onCardSelected(card, index);
                            },
                            animation: _animationControllerMovement!,
                          ),
                        ).reversed,
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
