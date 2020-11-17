import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapp/Screens/Login/signup.dart';
import 'package:recipeapp/Screens/Login/home.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<loginScreen> {
  bool _showPassword = false;
  bool login = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/images/bg_welcome.png",
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(85, 110, 85, 0),
              child: Column(
                children: [
                  Text(
                    "Recipe App",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    child: TextField(
                      decoration: new InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          labelText: "Dana Ali",
                          labelStyle: TextStyle(color: Colors.white),
                          fillColor: Colors.white24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: TextField(
                      obscureText: !this._showPassword,
                      autofocus: false,
                      decoration: new InputDecoration(
                          prefixIcon: Icon(Icons.security),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: this._showPassword
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() =>
                                  this._showPassword = !this._showPassword);
                            },
                          ),
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          filled: true,
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          fillColor: Colors.white24),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    width: size.width * .8,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.lightGreen,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          login
                              ? "Don't have an account ?"
                              : "Already have an Account ?",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SignUpScreen();
                            }));
                          },
                          child: Text(
                            login ? "Sign Up" : "Sign In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightGreen),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      margin:
                          EdgeInsets.symmetric(vertical: size.height * 0.02),
                      width: size.width * 0.8,
                      child: Row(children: [
                        buildDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "OR",
                            style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        buildDivider()
                      ])),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          // onTap: press,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              height: 20,
                              width: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: press,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              height: 20,
                              width: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: press,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.white),
                                shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              "assets/icons/twitter.svg",
                              height: 20,
                              width: 20,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
        child: Divider(
      color: Color(0xFFD9D9D9),
      height: 1.5,
    ));
  }
}
