import 'package:flutter/material.dart';

import 'SignUp.dart';

class LoginScreen extends StatefulWidget {

  TextEditingController emailController =TextEditingController() ;
  TextEditingController passwordController=TextEditingController() ;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  get emailController => null;

  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    var emailaddress = TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller:emailController,
      onSaved: (value){
        emailController.text = value.toString();


      },
      autofocus: true,
      decoration: InputDecoration(
          prefixIcon:Icon(
              Icons.email
          ),
          label:Text("Email Address ") ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          )
      ),
    );

    var Password = TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller:passwordController,
      onSaved: (value){

        passwordController.text = value.toString();

      },
      decoration: InputDecoration(
          prefixIcon:Icon(
              Icons.lock
          ),
          label:Text("Password") ,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
          )
      ),
    );
    var loginButton = Material(
      elevation: 5,
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
      child:SizedBox(
        width: double.infinity,
        child: MaterialButton(
          child: Text(
            "login",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
            ),
          ),
          onPressed:(){
          },



        ),
      ) ,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(

                padding: EdgeInsets.all(10),
                child: Text(
                    'cignifi',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
             Row(
               children: [

                 Text('Login to your Account'),
               ],
             ),
              SizedBox(
                height: 20,

              ),
              emailaddress,
              SizedBox(
                height: 20,

              ),
              Password,
              SizedBox(
                height: 20,

              ),
              loginButton,
              SizedBox(
                height: 50,

              ),
              Text('-Or sign in with-'),

              SizedBox(
                height: 50,

              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                height: 50,
                width: 50,
                child: Image.asset("assests/images.png",fit: BoxFit.contain,) ,
              ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.network('https://favpng.com/png_view/facebook-icon-facebook-social-networking-service-login-png/9mC6eK8N')
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/flutterlogo.png",fit: BoxFit.contain,) ,
                  ),
                ],
              ),

              SizedBox(
                height: 50,

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account',

                  ),
                  GestureDetector(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));


                    },
                    child: Text(
                      "Sign up" ,
                      style: TextStyle(
                        color: Colors.cyan,
                      ),
                    ),

                  )
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
