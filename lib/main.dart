import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: MobileAssignment(),
    );
  }
}

class MobileAssignment extends StatelessWidget {
  MobileAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Screen App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Codeplayon',
            style: TextStyle(color: Colors.lightBlue, fontSize: 30),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Password'),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.lightBlue, fontSize: 18),
              )),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                fixedSize: Size(MediaQuery.of(context).size.width * .88,
                    MediaQuery.of(context).size.height * .07),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(4)))),
            child: Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Does not have account',
                style: TextStyle(fontSize: 18),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.lightBlue, fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
