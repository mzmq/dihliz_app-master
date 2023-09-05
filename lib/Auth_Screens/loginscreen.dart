import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dihliz_app/Auth_Screens/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../main/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      // Handle any errors that occur during the sign-in process.
      print('Google Sign-In Error: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(65.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Artboard 15.png",
                  width: 270,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                    child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your email and password\nto access the warehouse",
                  style: TextStyle(color: Color.fromRGBO(91, 91, 91, 1)),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ('Please enter Your email');
                      }
                    },
                    style: const TextStyle(color: Colors.black87),
                    controller: email,
                    decoration: InputDecoration(
                      hintStyle:
                          const TextStyle(color: Color.fromRGBO(91, 91, 91, 1)),
                      hintText: ('example@example.com'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Color.fromRGBO(243, 242, 238, 1),
                      labelText: "email",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return ('Please enter your password');
                      }
                    },
                    style: const TextStyle(color: Colors.black87),
                    controller: password,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.black),
                      hintText: ('**** ****'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      filled: true,
                      fillColor: Color.fromRGBO(243, 242, 238, 1),
                      labelText: "password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have any account",
                      style: TextStyle(color: Color.fromRGBO(91, 91, 91, 1)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        ('Sign Up'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 260,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(38, 50, 56, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Processing Data'),
                            ),
                          );

                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email.text, password: password.text)
                              .then((value) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });

                          await FirebaseFirestore.instance
                              .collection("User")
                              .doc('FzwFbviNKXZz1IAhFPa0')
                              .set({'email': email, 'password': password});
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () async {
                    final userCredential = await signInWithGoogle();
                    if (userCredential != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Google Sign-In canceled or failed')),
                      );
                    }
                  },
                  child: Text("Sign in with Google",style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
