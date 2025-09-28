import 'package:flutter/material.dart';
import 'package:task1/screens/signup.dart';
import 'ForgetPass.dart';

class Signin extends StatefulWidget {
  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple[50],
                  ),
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "email",
                          filled: true,
                          fillColor: Colors.purple[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter email";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "password",
                          filled: true,
                          fillColor: Colors.purple[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        obscureText: true, 
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPass(),
                                ),
                              );
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.purple[50]),
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            
                            print("Form valid!");
                          } else {
                          
                            print("Form not valid!");
                          }
                        },
                        child: Text("Login"),
                      ),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                      }, child: Text("Don't have an account? Sign Up", style: TextStyle(color: Colors.purple[50]),))
                    ],
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
