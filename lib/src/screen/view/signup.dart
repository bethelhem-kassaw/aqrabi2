import 'package:aqrabi2/src/screen/view/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../controller/registerController.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
       var registerController = Get.put(RegisterController());

  bool _passwordVisible = false;
  bool _cpasswordVisible = false;
  MediaQueryData? queryData;
  // final controllerfirstname = TextEditingController();
  // final controllerlastname = TextEditingController();
  // final controllerphonenumber = TextEditingController();
  final controllercPassword = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    _cpasswordVisible = false;
  }
final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: queryData!.size.height * .1,
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
                height: queryData!.size.height * .03,
              ),
              // buildTextField(
              //   title: 'Email',
              //   controller: controllerEmail,
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter First Name';
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
                  controller: registerController.firstnameTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Enter your First Name',
                    // Here is key idea
                  ),
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter Last Name';
                      }
                      return null;
                  },

                  keyboardType: TextInputType.text,
                  controller: registerController.lastnameTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Enter your Last Name',
                    // Here is key idea
                  ),
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter Phone Number';
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
                  controller:  registerController.phonenumberTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'phone Number',
                    hintText: 'Enter your phone Number',
                    // Here is key idea
                  ),
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .03,
              ),
              // buildTextField(
              //   title: 'Password',
              //   controller: controllerPassword,
        
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter Password';
                      }
                      if(registerController.passwordTextcontroller!=controllercPassword.text){
                        return "Password does not match";
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
                  controller: registerController.passwordTextcontroller,
                  obscureText:
                      !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
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
                height: queryData!.size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter confirm Password';
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
                  // controller: controllerPassword,
                  obscureText:
                      !_cpasswordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    hintText: 'Enter your password',
                    
                    // Here is key idea
                    suffixIcon: IconButton(
                      icon: Icon(
                        // Based on passwordVisible state choose the icon
                        _cpasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        // Update the state i.e. toogle the state of passwordVisible variable
                        setState(() {
                          _cpasswordVisible = !_cpasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .03,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: TextFormField(
                  validator: (value) {
                    if(value!.isEmpty)
                      {
                        return 'Please Enter Address';
                      }
                      return null;
                  },
                  keyboardType: TextInputType.text,
                  controller: registerController.addressTextcontroller,
                  // obscureText: !_passwordVisible, //This will obscure text dynamically
                  decoration: InputDecoration(
                    labelText: 'Address',
                    hintText: 'Enter your Address',
                    // Here is key idea
                  ),
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .04,
              ),
              Container(
                width: queryData!.size.width * .7,
                height: queryData!.size.height * .06,
                // color: Color.fromARGB(21, 10, 1, 37),
        
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 7, 2, 32)),
                  child: Text('SIGN UP',
                      style: TextStyle(fontSize: 20, color: Colors.amber)),
                  onPressed: () {
                    if(_formkey.currentState!.validate())
                      {
                        print("successful");
                         registerController.registersupplier();
                        return;
                      }else{
                        print("UnSuccessfull");
                        //  Get.snackbar("aqrabi", "UnSuccessfull please check your query!",snackPosition: SnackPosition.BOTTOM);
                      }
                    //  registerController.registersupplier();
                  },
                ),
              ),
              SizedBox(
                height: queryData!.size.height * .02,
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
            ],
          ),
        ),
      ),
    );
  }
}
