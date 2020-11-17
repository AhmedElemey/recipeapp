import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/add_recipe.dart';
import 'package:recipeapp/Screens/Login/favorite.dart';
import 'package:recipeapp/Screens/Login/home.dart';
import 'package:recipeapp/Screens/Login/pasta.dart';
import 'package:recipeapp/Screens/Login/profile.dart';

class CatigoresScreen extends StatefulWidget {
  @override
  _CatigoresScreenState createState() => _CatigoresScreenState();
}

class _CatigoresScreenState extends State<CatigoresScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/bg_home.png"),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        "CATEGORIES",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                height: MediaQuery.of(context).size.height * .67,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .26,
                      width: MediaQuery.of(context).size.width * .75,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5.0,
                            offset: new Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PastaScreen(),
                              ));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              FittedBox(
                                fit: BoxFit.cover,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * .13,
                                  margin: EdgeInsets.all(2),
                                  child: Image.asset(
                                    "assets/images/chicken.jpg",
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "SALADS",
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Lorem ipsum dolor sit,amet consectetuer",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black38),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddRecipeScreen(),
                ));
          },
          tooltip: 'Increment',
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
            size: 30,
          ),
          elevation: 55.0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: MediaQuery.of(context).size.height * .11,
            margin: EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                // Bottom that pops up from the bottom of the screen.
                Container(
                  child: IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ))
                    },
                    icon: Icon(
                      Icons.home,
                      color: Colors.black38,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CatigoresScreen(),
                          ))
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.green,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 100),
                  child: IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoriteScreen(),
                          ))
                    },
                    icon: Icon(
                      Icons.star,
                      color: Colors.black38,
                      size: 40,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileScreen(),
                          ))
                    },
                    icon: Icon(
                      Icons.person_pin,
                      color: Colors.black38,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// bottomNavigationBar: BottomAppBar(
//           child: Row(
//             children: <Widget>[
//               // Bottom that pops up from the bottom of the screen.
//               IconButton(
//                 icon: Icon(Icons.menu),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//
// //        ),
// new BottomNavigationBarItem(
// icon: Icon(
// Icons.person_pin,
// color: Colors.black38,
// size: 40,
// ),
// activeIcon: Icon(
// Icons.person_pin,
// size: 50,
// color: Colors.green,
// ),
// label: "",
// )
