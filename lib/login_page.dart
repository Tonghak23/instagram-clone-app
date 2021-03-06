import 'package:flutter/material.dart';
import 'package:flutter_instagram_cloneapp/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){FocusScope.of(context).requestFocus(FocusNode());},
        child: _buildBody(),
      ),
    );
  }
  _buildBody() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.pinkAccent.shade400,
              Colors.white
            ],
          ),
      ),
      child: _buildLoginPanel(),
    );
  }
  _buildLoginPanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          _buidTitle(),
          _buildUsername(),
          _buildpassword(),
          _buildLoginButton(),
          _buildForgotLoginLink(),
          _buildDividerOr(),
          _buildLoginWithfacebook(),
      ],
    );
  }
  _buidTitle() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset("assets/img/İnstagram.png",fit: BoxFit.cover),
    );
  }
  _buildUsername() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      constraints: BoxConstraints(
        maxHeight: 50,
        maxWidth: 500
      ),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        style: TextStyle(fontSize: 18.0,color: Colors.white),
        decoration: InputDecoration(
          hintText: "Username",
          hintStyle:TextStyle(fontSize: 18.0,color: Colors.white),
          border: InputBorder.none
        ),
      ),
    );
  }
  _buildpassword() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      constraints: BoxConstraints(
          maxHeight: 50,
          maxWidth: 500
      ),
      decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        autocorrect: false,
        style: TextStyle(fontSize: 18.0,color: Colors.white),
        decoration: InputDecoration(
            hintText: "Password",
            hintStyle:TextStyle(fontSize: 18.0,color: Colors.white),
            border: InputBorder.none
        ),
        obscureText: true,
      ),
    );
  }
  _buildLoginButton() {
    return Container();
  }
  _buildForgotLoginLink() {
    return Container();
  }
  _buildDividerOr() {
    return Container();
  }
  _buildLoginWithfacebook() {
    return Container();
  }
}
