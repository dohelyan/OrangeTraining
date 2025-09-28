import 'package:flutter/material.dart';
import 'package:task1/functions/custom_text_form_field.dart';
import '';
class SignUp extends StatefulWidget
{
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp>
{
  final _emailController= TextEditingController();
  final _confirmPasswordController= TextEditingController();
  final _passwordController= TextEditingController();
  final _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.purple[400],

    body:  Center(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
         Form(
          key: _formKey,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Text("Create Account", style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple[50],)), 
                SizedBox(height: 30,),
               CustomTextFormField(controller: _emailController,
                hintText: "Email",
                validator: (value){
                  if(value==null || value.isEmpty)
                  {
                    return "Please enter email";
                  }
                  return null;
                }),
                SizedBox(height: 20,), 
                CustomTextFormField(controller: _passwordController,
                hintText: "Password",
                obscureText: true,
                validator: (value){
                    if(value== null|| value.isEmpty)
                    {
                      return ("enter your password"); 
                    }
                    else if (value.length<8)
                    {
                      return ("the length need to be 8 or more");
                    }
                    return null; 
                }
                ),
                SizedBox(height: 20,),
                CustomTextFormField(hintText: "confirm password",
                 controller: _confirmPasswordController, 
                  obscureText: true,
                  validator: (value){
                      if(value== null|| value.isEmpty)
                      {
                        return ("enter your password"); 
                      }
                      else if (value!=_passwordController.text)
                      {
                        return ("the passwords doesnt match ");
                      }
                      return null;}
                ), 
                SizedBox( height: 15,),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate())
                  {
                    //signup
                  }
                }, child: Text("Sign Up")), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?", style: TextStyle(
                      color: Colors.purple[50]
                    ),),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Sign In", style: TextStyle(
                      color: Colors.purple[50]
                    ),))
                  ],
                )
             ],
           ),
         ),
      ),
    )
    );
  }
}