import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/add_recipe.dart';
import 'package:recipeapp/Screens/Login/category.dart';
import 'package:recipeapp/Screens/Login/home.dart';
import 'package:recipeapp/Screens/Login/profile.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "FAVORITES",
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
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              height: MediaQuery.of(context).size.height * .755,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .49,
                        padding: EdgeInsets.only(left: 13, right: 5, top: 20),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .9,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                boxShadow: <BoxShadow>[
                                  new BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 3.0,
                                    offset: new Offset(0.0, 3.0),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                "assets/images/fried_checken.jpg",
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                )),
                            Positioned(
                                top: 80,
                                left: 10,
                                child: Text(
                                  "Italian pasta",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * .25,
                        // width: MediaQuery.of(context).size.width * .48,
                        height: MediaQuery.of(context).size.height * .27,
                        width: MediaQuery.of(context).size.width * .49,
                        padding: EdgeInsets.only(left: 20, right: 5, top: 20),
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                boxShadow: <BoxShadow>[
                                  new BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 3.0,
                                    offset: new Offset(0.0, 3.0),
                                  ),
                                ],
                              ),
                              child: Image.asset(
                                "assets/images/fried_checken.jpg",
                              ),
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.green,
                                )),
                            Positioned(
                                top: 80,
                                left: 10,
                                child: Text(
                                  "Italian pasta",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
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
          height: MediaQuery.of(context).size.height * .09,
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
                    color: Colors.green,
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
