import 'package:aqrabi2/src/screen/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  MediaQueryData? queryData;
  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: queryData!.size.height * .2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                        height: 100,
                        width: 100,
                        image: AssetImage('assets/image/Asset.png')),
                  ),
                  Column(
                    children: [
                      Text(
                        "aqrabi",
                        style: TextStyle(
                            color: Color.fromARGB(255, 7, 2, 32),
                            fontWeight: FontWeight.w800,
                            fontSize: 60),
                      ),
                      Text(
                        'wholesale delivery',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: queryData!.size.height * .3,
              ),
              Container(
                width: queryData!.size.width * .4,
                height: queryData!.size.height * .06,
                // color: Color.fromARGB(21, 10, 1, 37),
      
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 7, 2, 32)),
                  child: Text('Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.amber)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  },
                ),
              ),
            ]),
      ),
    );
  }
}
