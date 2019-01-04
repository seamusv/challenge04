import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.pink,
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0),
          subtitle: TextStyle(color: Colors.grey),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/city.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(children: <Widget>[_loginPane(context)]),
      ),
    );
  }
}

Widget _loginPane(context) {
  var _theme = Theme.of(context);

  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 150.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
              image: DecorationImage(
                image: AssetImage("assets/images/truck.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                Text(
                  'Login',
                  style: _theme.textTheme.title,
                ),
                Text(
                  'Please enter your credentials below.',
                  style: _theme.textTheme.subtitle,
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username or Email',
                    icon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {},
                        color: _theme.primaryColor,
                        textColor: Colors.white,
                        child: new Text("Login"),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text('Forgot Password'),
                      textColor: _theme.accentColor,
                    ),
                    Expanded(child: Container()),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Create Account'),
                      textColor: _theme.accentColor,
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
