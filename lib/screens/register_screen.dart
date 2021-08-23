//* MY REGISTRATION PAGE

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Color(0xffc2e0f9),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "REGISTRATION FROM",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    //*For Good/Better User Experience I Use KeyboardType Syntex.
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      //* hintStyle: TextStyle(color: Colors.black38),
                      hintText: "Enter Your Name",
                      labelText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    //*For Good/Better User Experience I Use KeyboardType Syntex.
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      //*hintStyle: TextStyle(color: Colors.black38),
                      hintText: "Enter Email Addres",
                      labelText: "User Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    //For Good/Better User Experience I Use KeyboardType Syntex.
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      // hintStyle: TextStyle(color: Colors.black38),
                      hintText: "Enter Password Here",
                      labelText: "Enter Password",
                      //This Icon Button Use For Eyebutton
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    //For Good/Better User Experience I Use KeyboardType Syntex.
                    keyboardType: TextInputType.emailAddress,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      // hintStyle: TextStyle(color: Colors.black38),
                      hintText: "Confirm The Password",
                      labelText: "Confirm Password",
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

                //REGISTRATION BUTTON.
                SizedBox(height: 10.0),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFC38FFF),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Have a Account / Login Here",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
