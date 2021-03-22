import 'package:flutter/material.dart';

class search_box extends StatefulWidget {
  @override
  _search_boxState createState() => _search_boxState();
}

class _search_boxState extends State<search_box> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            prefixIcon: Icon(Icons.search,size: 30),
            hintText: 'ຄົ້ນຫາ',
          ),
        ),
      );

  }
}
