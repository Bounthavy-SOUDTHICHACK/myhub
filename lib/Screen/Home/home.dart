import 'package:flutter/material.dart';
import 'package:pizza_hub/Screen/Get_start.dart';
import 'package:pizza_hub/Screen/Home/Catalog.dart';
import 'package:pizza_hub/Screen/Home/promotion.dart';
import 'package:pizza_hub/Screen/Home/search_box.dart';
import 'package:pizza_hub/Style/Color_set.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cg,
        centerTitle: true,
        title: Text('Home'),
        actions: [
        MaterialButton(onPressed: (){},
          color: cg,
          child: Icon(Icons.shopping_cart,color: Colors.white),
        ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Container(
                // child: Row(
                //   children: [
                //     Container(
                //       height: 300,
                //       width: 120,
                //       child: CircleAvatar(
                //         radius: 30,
                //         backgroundImage: AssetImage('assets/14.png'),
                //       ),
                //     )
                //   ],
                // ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/14.png'),
                  ),
                  title: Text('Bounthavy'),
                  subtitle: Text('ID: xxxxxxx'),
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Text('Profile'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              onTap: (){},
              title: Text('Order'),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return Get_start();}));
              },
              title: Text('Log out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: cg,
            child: search_box(),
          ),

          Container(
            margin: EdgeInsets.only(top: 10,bottom: 10),
            height: 150,
            child: Promotion(),
          ),

          Container(
            height: 600,
            // decoration: BoxDecoration(
            //   border:Border.all(
            //     color: Colors.black,
            //   )
            // ),
            width: double.infinity,
            child: Catalog(),
          )
        ],
      ),
    );
  }
}
