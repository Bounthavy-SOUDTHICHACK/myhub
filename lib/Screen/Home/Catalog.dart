import 'package:flutter/material.dart';
import 'package:pizza_hub/Style/Color_set.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
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

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1605591099585-087b3d54cd45?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1042&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1604068549290-dea0e4a305ca?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=967&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1528137871618-79d2761e3fd5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1607290817806-e93c813ff329?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1574071318508-1cdbab80d002?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1600346019001-8d56d1b51d59?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1571207133905-e63101f15248?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1571207133905-e63101f15248?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

    {
      "product-name": "Pizza",
      "product-image-url":
      "https://images.unsplash.com/photo-1571207133905-e63101f15248?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 2,
        semanticChildCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 1.0,
        children: data.map((e) {
          return Container(
            width: 200,
            height: 200,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(e['product-image-url']), fit: BoxFit.cover),
              border: Border.all(color: Colors.amber),
              borderRadius: BorderRadius.circular(12)),
            child: Container(
              color: Colors.black45.withOpacity(0.5),
                padding: EdgeInsets.all(5),
                child: Text(e['product-name'], style: TextStyle(color: Colors.amber),
                )),
          );
        }).toList(),
      ),
      ),
    );
  }
}
