import 'package:aqrabi2/src/screen/view/signup.dart';
import 'package:aqrabi2/src/screen/view/signupchoose.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controller/loginController.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _passwordVisible = false;
  MediaQueryData? queryData;

  var loginController = Get.put(LoginController());
  // final controllerName = TextEditingController();
  // final controllerphonenum = TextEditingController();
  // final controllerPassword = TextEditingController();
  // Widget buildTextField({
  //   required String title,
  //   required TextEditingController controller,
  //   int maxLines = 1,
  // }) =>
  //     Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
  //           child: Text(
  //             title,
  //             style: TextStyle(fontSize: 16.0),
  //           ),
  //         ),
  //         // SizedBox(
  //         //   height: 8,
  //         // ),
  //         Padding(
  //           padding: const EdgeInsets.fromLTRB(20, 10, 30, 0),
  //           child: TextField(
  //             controller: controller,
  //             maxLines: maxLines,
  //             obscureText: !_passwordVisible,
  //             decoration: InputDecoration(
  //                 // border: OutlineInputBorder(
  //                 //   borderRadius: BorderRadius.circular(30),
  //                 // ),
  //                 ),
  //           ),
  //         ),
  //       ],
  //     );

  @override
  void initState() {
    _passwordVisible = false;
  }

  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
              height: 100,
            ),
            // buildTextField(
            //   title: 'Email',
            //   controller: controllerEmail,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: loginController.phonenumberEditingController,
                // obscureText: !_passwordVisible, //This will obscure text dynamically
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'Enter your phone number',
                  // Here is key idea
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // buildTextField(
            //   title: 'Password',
            //   controller: controllerPassword,
      
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: loginController.passwordEditingController,
                obscureText:
                    !_passwordVisible, //This will obscure text dynamically
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  // Here is key idea
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
      
            TextButton(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
                onPressed: () {}),
            SizedBox(
              height: 30,
            ),
      
            Container(
              width: queryData!.size.width * .7,
              height: queryData!.size.height * .06,
              // color: Color.fromARGB(21, 10, 1, 37),
      
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 7, 2, 32)),
                child: Text('Log in',
                    style: TextStyle(fontSize: 20, color: Colors.amber)),
                onPressed: loginController.login,
              ),
            ),
            TextButton(
                child: Text(
                  "Sign Up".toUpperCase(),
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const signupchoose()),
                  );
                }),
          ],
        ),
      ),
    );
  }

  // loginui(BuildContext context) {
  //   Container(
  //     height: 20,
  //     color: Colors.black,
  //     child: Image(image: AssetImage('assets/image/logo.png')),
  //   );
  // }
}
