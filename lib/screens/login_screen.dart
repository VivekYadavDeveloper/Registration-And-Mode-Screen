//*MY LOGIN PAGE

import 'dart:ui';
// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_hello_world/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //To make apps secure and easy to use, check whether the information the user has provided is valid.
        //If the user has correctly filled out the form, process the information.
        //If the user submits incorrect information, display a friendly error message letting them know what went wrong.
        child: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      //For Good/Better User Experience I Use KeyboardType Syntex.
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        // hintStyle: TextStyle(color: Colors.black38),
                        hintText: "Enter Email Address Here",
                        labelText: "User Email/Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,

                      //ObscureText Means To Make The Field Not Readable Or Not Understandable Easily
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        // hintStyle: TextStyle(color: Colors.black38),
                        hintText: "Enter Password Here",
                        labelText: "User Password",

                        //THIS ICON BUTTON USE FOR PASSWORD VISIBILITY
                        suffixIcon: IconButton(
                          color: Colors.grey.shade600,
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  //LOGIN BUTTON
                  SizedBox(height: 30.0),
                  Container(
                    height: 55.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFC38FFF),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Center(
                      child: Text(
                        "Login Here",
                        //TODO: Login button
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  //REGISTRATION PAGE BUTTON
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Center(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF8F7F8),
                      ),
                      onPressed: () {
                        Get.to(RegisterScreen());
                      },
                      child: Text(
                        "New User / Register Here",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//12:45
