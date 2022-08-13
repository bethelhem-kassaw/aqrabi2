import 'package:aqrabi2/src/screen/view/login.dart';
import 'package:aqrabi2/src/screen/view/signup.dart';
import 'package:aqrabi2/src/screen/view/signupuser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class signupchoose extends StatefulWidget {
  const signupchoose({super.key});

  @override
  State<signupchoose> createState() => _signupchooseState();
}

class _signupchooseState extends State<signupchoose> {
  MediaQueryData? queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 150,
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: Divider(
                indent: 20,
                endIndent: 5,
                thickness: 1,
                color: Colors.black,
              ),
            ),
            Container(
              child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage('assets/image/logo.png')),
            ),
            Flexible(
              child: Divider(
                indent: 5,
                endIndent: 20,
                thickness: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(
          height: queryData!.size.height * .1,
        ),
        Text(
          'choose To Sign up',
          style: TextStyle(color: Color.fromARGB(255, 7, 2, 32), fontSize: 25),
        ),
        SizedBox(
          height: queryData!.size.height * .1,
        ),
        Container(
          width: queryData!.size.width * .7,
          height: queryData!.size.height * .06,
          // color: Color.fromARGB(21, 10, 1, 37),

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 7, 2, 32)),
            child: Text(' Supplier',
                style: TextStyle(fontSize: 20, color: Colors.amber)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const signup()),
              );
            },
          ),
        ),
        SizedBox(
          height: queryData!.size.height * .07,
        ),
        Container(
          width: queryData!.size.width * .7,
          height: queryData!.size.height * .06,
          // color: Color.fromARGB(21, 10, 1, 37),

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 7, 2, 32)),
            child: Text(' User',
                style: TextStyle(fontSize: 20, color: Colors.amber)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const signupuser()),
              );
            },
          ),
        ),
        SizedBox(
          height: queryData!.size.height * .03,
        ),
        TextButton(
            child: Text(
              "Already have Account? LOG IN",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const login()),
              );
            }),
      ]),
    );
  }
}
