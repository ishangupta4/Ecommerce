import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ecommerce/db/users.dart';

import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  UserServices _userServices = UserServices();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEdigingController =
      TextEditingController();
  TextEditingController _nameTextEditingController = TextEditingController();
  TextEditingController _confirmPasswordTextEditingController =
      TextEditingController();
  String gender;
  String groupValue = "male";
  bool loading = false;

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  valueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
        gender = e;
      } else if (e == "female") {
        groupValue = e;
        gender = e;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.3),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Icon(
                      Icons.shop,
                      size: 80,
                      color: Colors.redAccent,
                    ),
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white.withOpacity(0.3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Name",
                                    labelStyle: TextStyle(color: Colors.yellow),
                                    isDense: true,
                                    icon: Icon(
                                      Icons.person_outline,
                                      color: Colors.redAccent,
                                    )),
                                keyboardType: TextInputType.emailAddress,
                                controller: _nameTextEditingController,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'name field can not be empty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    "male",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  trailing: Radio(
                                    hoverColor: Colors.yellow,
                                    value: "male",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text(
                                    "female",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  trailing: Radio(
                                    hoverColor: Colors.yellow,
                                    value: "female",
                                    groupValue: groupValue,
                                    onChanged: (e) => valueChanged(e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white.withOpacity(0.3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(color: Colors.yellow),
                                    isDense: true,
                                    icon: Icon(
                                      Icons.email,
                                      color: Colors.redAccent,
                                    )),
                                keyboardType: TextInputType.emailAddress,
                                controller: _emailTextEditingController,
                                validator: validateEmail,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white.withOpacity(0.3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(color: Colors.yellow),
                                    labelText: "password",
                                    isDense: true,
                                    icon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.redAccent,
                                    )),
                                keyboardType: TextInputType.visiblePassword,
                                controller: _passwordTextEdigingController,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'password can not be empty';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white.withOpacity(0.3),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelStyle: TextStyle(color: Colors.yellow),
                                    labelText: "Confirm password",
                                    isDense: true,
                                    icon: Icon(
                                      Icons.lock_outline,
                                      color: Colors.redAccent,
                                    )),
                                keyboardType: TextInputType.visiblePassword,
                                controller:
                                    _confirmPasswordTextEditingController,
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'confirm password can not be empty';
                                  } else if (_passwordTextEdigingController
                                          .text !=
                                      value) {
                                    return 'password did not match';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.blue.withOpacity(0.8),
                              child: MaterialButton(
                                onPressed: () async {
                                  validateForm();
                                },
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Register",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Divider(),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Log in!",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 18.0),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Visibility(
              visible: loading ?? true,
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white.withOpacity(0.9),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future validateForm() async {
    FormState formState = _formKey.currentState;
    print("1");
    Map value;
    if (formState.validate()) {
      FirebaseUser user = await firebaseAuth.currentUser();
      print(user.uid);
      //if (user == null) {
      AuthResult result = await firebaseAuth.createUserWithEmailAndPassword(
          email: _emailTextEditingController.text,
          password: _passwordTextEdigingController.text);
      print("4");
      FirebaseUser newUser = result.user;
      print("3");
      _userServices.createUser(user.uid, {
        "username": newUser..displayName,
        "email": newUser.email,
        "userId": newUser.uid,
        "gender": gender,
      });
      print("2");
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
      // }
    }
  }
}
