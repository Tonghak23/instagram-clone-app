import 'package:flutter/material.dart';
import 'package:flutter_instagram_cloneapp/main.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}
class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
      String profile = "https://static.wixstatic.com/media/902040_30336145aa8b40d8b6e898e3e107f92c~mv2.png/v1/fill/w_300,h_302,al_c,q_85,usm_0.66_1.00_0.01/User%2005c.webp";
      int currentPage=0;
      String username="Takexn404";
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
      List<String> post=[

            // "assets/img/2.jpg",
            // "assets/img/3.jpg",
            // "assets/img/5.jpg",
            // "assets/img/8.jpg",
            // "assets/img/9.jpg",
            // "assets/img/11.jpg",
            // "assets/img/12.jpg",
            // "assets/img/13.jpg",
            // "assets/img/14.jpg",
            "assets/img/1.jpg",
            "assets/img/2.jpg",
            "assets/img/3.jpg",
            "assets/img/5.jpg",
            "assets/img/8.jpg",
            "assets/img/9.jpg",
            "assets/img/12.jpg",
            "assets/img/23.jpg",
            "assets/img/15.png",
            "assets/img/25.jpg"
      ];
      Future<void> onRefresh()async{
        await Future.delayed(Duration(seconds: 2),);
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Image.asset("assets/img/İnstagram.png",height: 50),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.near_me_sharp,color: Colors.pinkAccent[400]))],
      ),
      endDrawer: _buildDrawer(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
  // _buildBottomNavigationBar() {
  //       return BottomNavigationBar(
  //         items: const <BottomNavigationBarItem>[
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.home_outlined,color: Colors.black,),
  //             label: 'Home',
  //           ),
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.play_circle_outline,color: Colors.black,),
  //             label: 'Play',
  //           ),
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.account_circle_outlined,color: Colors.black,),
  //             label: 'Me',
  //           ),
  //           BottomNavigationBarItem(
  //             icon: Icon(Icons.menu,color: Colors.black,),
  //             label: 'Menu',
  //           ),
  //         ],
  //         currentIndex: _selectedIndex,
  //         selectedItemColor: Colors.pinkAccent[400],
  //         onTap: _onItemTapped,
  //   );
  // }
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
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: SingleChildScrollView(
        child: Column(
          children: [
              //Story Widget
              SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
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
                        Text("See story",style: TextStyle(fontSize: 12.0,fontFamily: 'Ubuntu-Medium',color: Colors.pink[600]),),
                      ],
                    ),
                  )),
                  ),
              ),
            Divider(),
            Column(
                children: List.generate(10, (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Header posting
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          child:  CircleAvatar(
                            // radius: 35,
                            backgroundImage: AssetImage("assets/img/story3.png"),
                            child: CircleAvatar(
                              // radius: 30,
                              backgroundImage: AssetImage(profileStory[index]),
                            ),
                          ),
                      ),
                      Text("${username}",style: TextStyle(fontFamily: 'Ubuntu-Medium',fontSize: 16,color: Colors.blueGrey[800]),),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp,color: Colors.pinkAccent[400],))
                    ],
                  ),
                  //Image post
                  Image.asset(post[index]),
                  Row(
                    children: [
                      IconButton(icon: Icon(Icons.favorite_border_outlined,color: Colors.pinkAccent[400],),onPressed: (){}),
                      IconButton(icon: Icon(Icons.chat_bubble_outline),onPressed: (){}),
                      IconButton(icon: Icon(Icons.near_me_outlined),onPressed: (){}),
                      Spacer(),
                      IconButton(icon: Icon(Icons.bookmark_add_outlined),onPressed: (){}),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         RichText(
                           text: TextSpan(
                             style: TextStyle(color: Colors.blueGrey[800]),
                           children: [
                             TextSpan(text: "Someone reached and others. See more...",style: TextStyle(fontFamily: 'Ubuntu-Medium'),),
                             // TextSpan(text: "View more...",style: TextStyle(fontFamily: 'Ubuntu-Medium'),)
                           ],
                         ),),
                          //U can put one or much Richtext here......??????
                          Text("View 23 comments...",style: TextStyle(fontFamily: 'Ubuntu-Medium')),
                        ],
                    ),
                  ),
                ],
            ),
            ),
            ),
          ],
        ),
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
                        _scaffoldkey.currentState!.openEndDrawer();
                        setState(() {
                          currentPage=4;
                        });
                      },),
          ],
        ),
    );
  }
}
