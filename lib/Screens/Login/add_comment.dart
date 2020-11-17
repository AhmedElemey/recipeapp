import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/add_recipe.dart';
import 'package:recipeapp/Screens/Login/category.dart';
import 'package:recipeapp/Screens/Login/favorite.dart';
import 'package:recipeapp/Screens/Login/home.dart';
import 'package:recipeapp/Screens/Login/profile.dart';

class AddCommentScreen extends StatefulWidget {
  @override
  _AddCommentScreenState createState() => _AddCommentScreenState();
}

class _AddCommentScreenState extends State<AddCommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .85,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/comment_bg.png',
                ),
                Positioned(
                  top: 45,
                  right: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.share_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                  top: 45,
                  left: 20,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 130,
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 10,
                  right: 10,
                  child: Container(
                      height: MediaQuery.of(context).size.height * .7,
                      margin: EdgeInsets.all(10),
                      padding: new EdgeInsets.only(
                          left: 0.0, bottom: 3.0, right: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                        boxShadow: <BoxShadow>[
                          new BoxShadow(
                            color: Colors.black38,
                            blurRadius: 3.0,
                            offset: new Offset(0.0, 3.0),
                          ),
                        ],
                      ),
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 60, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "Italian pasta ",
                                      style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber[500],
                                      size: 35,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Recipe by: Asmaa",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.black26),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 70, right: 70, top: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.watch_later_rounded,
                                            size: 50,
                                            color: Colors.black26,
                                          ),
                                          Text(
                                            "55 mins",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black26,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(),
                                    Container(
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.build,
                                            size: 50,
                                            color: Colors.black26,
                                          ),
                                          Text(
                                            "2 Dishes",
                                            style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.black26,
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "What you need:",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 5, right: 100),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1 - pasta",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26),
                                    ),
                                    SizedBox(),
                                    Text(
                                      "2 - salt",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 5, right: 40),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "3 - tomato",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26),
                                    ),
                                    SizedBox(),
                                    Text(
                                      "4 - 1/2 cup oil",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black26),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Row(
                                  children: [
                                    Text(
                                      "How to:",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            "1 - Lorem ipsum dolor sit amet",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            "2 - consectetuer adipiscing elit. ",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            "3 - Aenean commodo ligula eget dolor.",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4 - Lorem ipsum dolor sit amet..",
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: 20,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      )),
                ),
              ],
            ),
          ),
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
          height: MediaQuery.of(context).size.height * .1,
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
                    color: Colors.black38,
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
    );
  }
}
