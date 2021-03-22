import 'package:flutter/material.dart';
class Promotion extends StatefulWidget {
  @override
  _PromotionState createState() => _PromotionState();
}

class _PromotionState extends State<Promotion> {

  List data = [
    {
    "product-name": "Pizza",
    "product-image-url":
    "https://image.freepik.com/free-photo/top-view-pepperoni-pizza-sliced-into-six-slices_141793-2157.jpg"
    },

    {
    "product-name": "Pizza",
    "product-image-url":
    "https://images.unsplash.com/photo-1523476467467-16477f18dba0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80"
    },

    {
    "product-name": "Pizza",
    "product-image-url":
    "https://images.unsplash.com/photo-1573821663912-6df460f9c684?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80"
    },
  ];

  PageController _controller = PageController(
    initialPage: 0,
      viewportFraction: 0.8
  );

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
Widget_card(){
  return Card(
    // child: new Image.network(),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30))
    ),
  );
}