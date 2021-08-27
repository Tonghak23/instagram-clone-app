import 'package:flutter/material.dart';
import 'package:flutter_instagram_cloneapp/main.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {
      String profile = "https://static.wixstatic.com/media/902040_30336145aa8b40d8b6e898e3e107f92c~mv2.png/v1/fill/w_300,h_302,al_c,q_85,usm_0.66_1.00_0.01/User%2005c.webp";
      int currentPage=0;
      var _scaffoldkey = GlobalKey<ScaffoldState>();
      List<String> profileStory=[
        "assets/img/1.jpg",
        "assets/img/2.jpg",
        "assets/img/3.jpg",
        "assets/img/5.jpg",
        "assets/img/8.jpg",
        "assets/img/9.jpg",
        "assets/img/12.jpg",
        "assets/img/13.jpg",
        "assets/img/14.jpg",
        "assets/img/15.png",
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Image.asset("assets/img/İnstagram.png",height: 50),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.near_me_sharp))],
      ),
      drawer: _buildDrawer(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  _buildDrawer() {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          DrawerHeader(
            child: Image.network(profile),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.blueGrey[900]),
            title: Text("Home", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0)),
            trailing: Icon(Icons.navigate_next_sharp, color: Colors.indigoAccent,),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined, color: Colors.blueGrey[900]),
            title: Text("Me", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0)),
            trailing: Icon(Icons.navigate_next_sharp, color: Colors.indigoAccent,),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border_outlined, color: Colors.blueGrey[900]),
            title: Text("Course", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0)),
            trailing: Icon(Icons.navigate_next_sharp, color: Colors.indigoAccent,),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined, color: Colors.blueGrey[900]),
            title: Text("Location", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0)),
            trailing: Icon(Icons.navigate_next_sharp, color: Colors.indigoAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blueGrey[900],),
            title: Text("Setting", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0)),
            trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.redAccent,),
            title: Text("Logout", style: TextStyle(fontFamily: 'Ubuntu-Medium', fontSize: 16.0, color: Colors.redAccent)),
            trailing: Icon(Icons.navigate_next_sharp,color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
  _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
            //Story Widget
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: List.generate(10, (index) => Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/img/story3.png"),
                        child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(profileStory[index]),
                        ),
                      ),
                      Text("See story",style: TextStyle(fontSize: 12.0,fontFamily: 'Ubuntu-Medium'),),
                    ],
                  ),
                )),
                ),
            ),
          Divider(),
        ],
      ),
    );
  }
  _buildBottomNavigationBar() {
    return BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.home_outlined,
                      color: currentPage==0?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),),
                      onPressed: (){
                          setState(() {
                              currentPage=0;
                          });
                      },),
            IconButton(icon: Icon(Icons.search,
                      color: currentPage==1?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),),
                      onPressed: (){
                          setState(() {
                             currentPage=1;
                          });
                      },),
            IconButton(icon: Icon(Icons.ondemand_video_rounded),
                      color: currentPage==2?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),
                      onPressed: (){
                        setState(() {
                          currentPage=2;
                        });
                      },),
            IconButton(icon: Icon(Icons.account_circle_outlined),
                      color: currentPage==3?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),
                      onPressed: (){
                        setState(() {
                          currentPage=3;
                        });
                      },),
            IconButton(icon: Icon(Icons.menu),
                      color: currentPage==4?Color.fromRGBO(203, 73, 101, 1):Color.fromRGBO(40, 40, 40, 1),
                      onPressed: (){
                        _scaffoldkey.currentState!.openDrawer();
                        setState(() {
                          currentPage=4;
                        });
                      },),
          ],
        ),
    );
  }
}
