import 'package:flutter/material.dart';
import 'package:flutter_instagram_cloneapp/main.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
   String profile = "https://static.wixstatic.com/media/902040_30336145aa8b40d8b6e898e3e107f92c~mv2.png/v1/fill/w_300,h_302,al_c,q_85,usm_0.66_1.00_0.01/User%2005c.webp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          "Instagram",
          style: TextStyle(fontSize: 20),
        ),
      ),
      drawer: _buildDrawer(),
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
              leading: Icon(Icons.home,color: Colors.blueGrey[900]),
              title: Text("Home",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
               leading: Icon(Icons.account_circle_outlined,color: Colors.blueGrey[900]),
               title: Text("Me",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
               trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.computer_sharp,color: Colors.blueGrey[900]),
              title: Text("Course",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.location_history,color: Colors.blueGrey[900]),
              title: Text("Location",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.settings,color: Colors.blueGrey[900],),
              title: Text("Setting",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.indigoAccent,),
              ),
              ListTile(
              leading: Icon(Icons.logout,color: Colors.redAccent,),
              title: Text("Logout",style: TextStyle(fontFamily: 'VarelaRound-Regular',fontSize: 20.0,color: Colors.redAccent)),
              trailing: Icon(Icons.navigate_next_sharp,color: Colors.redAccent,),
            ),
          ],
        ),
    );
  }
}
