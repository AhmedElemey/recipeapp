import 'package:flutter/material.dart';
import 'package:recipeapp/Screens/Login/category.dart';
import 'package:recipeapp/Screens/Login/favorite.dart';
import 'package:recipeapp/Screens/Login/home.dart';
import 'package:recipeapp/Screens/Login/profile.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AddRecipeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/bg_home.png"),
              Positioned(
                bottom: 20,
                left: 110,
                right: 76,
                child: Text(
                  "Post your Recipe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(25),
              height: MediaQuery.of(context).size.height * .57,
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
              child: Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: TextField(
                  style: TextStyle(
                    color: Colors.black12,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What is your recipe for today ??..'),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              SizedBox(),
              Container(
                margin: EdgeInsets.only(right: 15, top: 15),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13.0),
                  ),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black38,
                      blurRadius: 5.0,
                      offset: new Offset(0.0, 3.0),
                    ),
                  ],
                ),
                child: FlatButton(
                  child: Text(
                    "Post",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          )
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
