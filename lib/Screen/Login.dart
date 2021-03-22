import 'package:flutter/material.dart';
import 'package:pizza_hub/Screen/Home/home.dart';
import 'package:pizza_hub/Screen/Sign_up.dart';
import 'package:pizza_hub/Style/Color_set.dart';
import 'package:firebase_auth/firebase_auth.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  String _email, _password;
  final auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // final FirebaseAuth _auth = FirebaseAuth.instanceFor();
  // TextEditingController _name = TextEditingController();
  // TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      key: _formkey,
      children: [
        Column(
          children: [
            Container(
              height: 325,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                ),
                border: Border.all(
                  color: Colors.black26,
                ),
                color: cg,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 60, left: 50, right: 10),
                    height: 170,
                    width: double.infinity,
                    child: Image.asset('assets/14.png'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ຍິນດີຕ້ອນຮັບ !',
                    style: TextStyle(fontSize: 36, color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 10, left: 30, right: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: TextField(
                  // onChanged: (value){
                  //   setState(() {
                  //     email = value.trim();
                  //   });
                  // },
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, right: 10, left: 10),
                      child: Icon(
                        Icons.person_outline,
                        size: 35,
                        color: cg,
                      ),
                    ),
                    hintText: ('Email'), //// ຊື່ ຫຼື ອີເມວ
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value.trim();
                    });
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20, left: 30, right: 30),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.black,
                  )),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _password = value.trim();
                  });
                },
                style: TextStyle(fontSize: 20),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, right: 10, left: 10),
                    child: Icon(
                      Icons.lock,
                      size: 35,
                      color: cg,
                    ),
                  ),
                  hintText: ('Password'), //ຊື່ ຫຼື ອີເມວ
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30, left: 60, right: 60),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xffFFD784),
                border: Border.all(
                  color: Colors.black12,
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  auth
                      .signInWithEmailAndPassword(
                          email: _email, password: _password)
                      .then((userCredential) {
                    if (userCredential.user != null) {
                      //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  });

                  // });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 20,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have a account ! ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  MaterialButton(
                    onPressed: () {
                      auth.signInWithEmailAndPassword(
                          email: _email, password: _password);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Sign_up();
                      }));
                    },
                    padding: EdgeInsets.all(2),
                    height: 100,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}
