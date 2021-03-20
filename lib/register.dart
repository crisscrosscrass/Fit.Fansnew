
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitfans/constants.dart';


import 'package:fitfans/premiumbereich.dart';

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _displayName = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isSuccess;
  String _userEmail;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: kThirdColor,
        body: SingleChildScrollView(
                  child: Column(children: [
            SizedBox(
              height: 70,
            ),
            RichText(
              text: TextSpan(
                text: 'Simones\t',
                style: TextStyle(
                    fontFamily: "Bebas", fontSize: 30, letterSpacing: 5),
                children: <TextSpan>[
                  TextSpan(
                    text: 'FIT.FANS',
                    style: TextStyle(color: kFirstColor),
                  )
                ],
              ),
            ),
            SizedBox(height: 100,),
            Center(
          
                        child: Form(
      key: _formKey,
      child: Card(
          child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _displayName,
                    decoration: const InputDecoration(labelText: 'Full Name'),style: TextStyle(color:kThirdColor,),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email'),style: TextStyle(color:kThirdColor,),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(labelText: 'Password'),style: TextStyle(color:kThirdColor,),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 30,),
                  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      
                      child: Container(
                          decoration: BoxDecoration(
                            color: kFirstColor,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: kFirstColor),
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Center(child: Text('Resgistieren',style: TextStyle(color:kThirdColor), )),),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          _registerAccount();
                        }
                      },
                    ),
                  ]  ),
                  )],
              ),
          ),
      )),
            ),
       
          ]),
        ));
  }

  void _registerAccount() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    ))
        .user;

    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => PremiumBereich(
                user: user1,
              )));
    } else {
      _isSuccess = false;
    }
  }
}