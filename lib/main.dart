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
          )),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: MediaQuery.of(context).padding.top + 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 150.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/truck.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Please enter your credentials below.',
                              style: TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Username or Email',
                                icon: Icon(Icons.person),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                icon: Icon(Icons.lock),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Theme.of(context).primaryColor,
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
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text('Create Account'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
