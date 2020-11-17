import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/add_recipe.dart';
import 'package:recipeapp/Screens/Login/category.dart';
import 'package:recipeapp/Screens/Login/favorite.dart';
import 'package:recipeapp/Screens/Login/home.dart';
import 'package:recipeapp/Screens/Login/most_related.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .38,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/bg_profile.png',
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
                  top: 90,
                  left: 10,
                  right: 10,
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 50),
                            child: Text("Dana Ali",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.green))),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      child: Text(
                                    "Recipes",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black38),
                                  )),
                                  Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "154",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 30),
                                      ))
                                ],
                              ),
                              SizedBox(),
                              Column(
                                children: [
                                  Container(
                                      child: Text(
                                    "Following",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black38),
                                  )),
                                  Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "15K",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 30),
                                      ))
                                ],
                              ),
                              SizedBox(),
                              Column(
                                children: [
                                  Container(
                                      child: Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black38),
                                  )),
                                  Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "16K",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 30),
                                      ))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * .23,
                    width: MediaQuery.of(context).size.width * .5,
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
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 100,
                  right: 100,
                  child: Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/avatar.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      radius: 65.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Your Recipes",
                    style: TextStyle(fontSize: 30, color: Colors.green),
                  ),
                ),
                SizedBox(),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MostRelatedScreen();
                      }));
                    },
                    child: Text(
                      "See all",
                      style: TextStyle(fontSize: 25, color: Colors.black12),
                    ))
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .23,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height * .2,
                  width: MediaQuery.of(context).size.width * .35,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
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
                  margin: EdgeInsets.all(7),
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/salads.jpg",
                          ),
                          Positioned(
                              left: 110,
                              bottom: 50,
                              child: Text(
                                "Salad",
                                style: TextStyle(
                                    fontSize: 70, color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  child: Text(
                    "Search Tags",
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .25,
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: new Offset(0.0, 3.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Tea",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .25,
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: new Offset(0.0, 3.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Soup",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .25,
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3.0,
                      offset: new Offset(0.0, 3.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Salad",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ],
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
                    color: Colors.green,
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
