import 'package:flutter/material.dart';

class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {


  PageController _controller =
  PageController(initialPage: 0, viewportFraction: 0.8);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Widget_card(),
        Widget_card(),
        Widget_card(),
      ],
    );
  }
}

Widget_card() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    child:Image.network(
        'https://cdn.grabon.in/gograbon/images/web-images/uploads/1568716703142/dominos-coupons.jpg',fit: BoxFit.cover),
  );
}
