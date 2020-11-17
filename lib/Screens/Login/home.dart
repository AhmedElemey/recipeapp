import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/add_recipe.dart';
import 'package:recipeapp/Screens/Login/category.dart';
import 'package:recipeapp/Screens/Login/most_related.dart';
import 'package:recipeapp/Screens/Login/favorite.dart';
import 'package:recipeapp/Screens/Login/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
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
                  top: 40,
                  left: 76,
                  right: 76,
                  child: Text(
                    "What do you want to eat?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100, left: 30, right: 30),
                  child: TextField(
                    decoration: new InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        hintText: "Search",
                        fillColor: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 5),
              margin: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Catigories",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  SizedBox(),
                  FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CatigoresScreen();
                        }));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 25, color: Colors.black38),
                      ))
                ],
              ),
            ), //Catigories
            Container(
              height: MediaQuery.of(context).size.height * .1,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .09,
                    width: MediaQuery.of(context).size.width * .6,
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
                    margin: EdgeInsets.all(7),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/salads.jpg",
                            width: MediaQuery.of(context).size.width,
                          ),
                          Positioned(
                              left: 10,
                              bottom: 70,
                              child: Text(
                                "Salad",
                                style: TextStyle(
                                    fontSize: 70, color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ), //Card1
            Container(
              padding: EdgeInsets.only(top: 5),
              margin: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most rated recipes",
                    style: TextStyle(fontSize: 25, color: Colors.black),
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
                        style: TextStyle(fontSize: 25, color: Colors.black38),
                      ))
                ],
              ),
            ), //Most Rated
            Container(
              height: MediaQuery.of(context).size.height * .4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .5,
                    margin: EdgeInsets.all(10),
                    padding: new EdgeInsets.only(
                        left: 0.0, bottom: 8.0, right: 16.0),
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // add this
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .1,
                          width: MediaQuery.of(context).size.width * .13,
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/images/fried_checken.jpg",
                              ),
                              Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Icon(Icons.favorite_border_outlined))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            "Grilled chicken",
                            style: TextStyle(
                                fontSize: 20, color: Colors.greenAccent),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Center(
                            child: Text(
                              "Lorem ipsum dolor sit "
                              "amet consectetuer"
                              " adipiscing elit. ",
                              style: TextStyle(
                                  color: Colors.black12, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "50 m",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              ),
                              SizedBox(),
                              Text(
                                "2 Dishes",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black38),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
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
          elevation: 5.0,
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
      ),
    );
  }
}
