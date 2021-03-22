import 'package:flutter/material.dart';
import 'package:pizza_hub/Screen/Login.dart';
import 'package:pizza_hub/Style/Color_set.dart';

class Get_start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: bg,
        height: size.height,
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 150),
            Container(
              child: Text('Pizza HUB',style: TextStyle(fontSize: 48),),
            ),
            Container(
                margin: EdgeInsets.only(top: 30, bottom: 50),
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(150)),
                    border: Border.all(
                      color: Colors.black12,
                    )
                ),
                child: CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage('assets/logo.jpg'),
                )),
            Container(
              height: 65,
              width: 246,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xffFFD784),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  print('Get Started');

                  // MaterialPageRoute materialPageRoute = MaterialPageRoute(builder: (BuildContext context) => login());
                  // Navigator.of(context).push(materialPageRoute);
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return login();
                  }));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  'ເລີ່ມ',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
