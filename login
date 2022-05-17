import 'package:flutter/material.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();


      return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.login),
          title: Text("UI App LOgin",style: TextStyle(fontSize: 20,color: Colors.white),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.list))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(40),

          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,


                children: [

                  Text("Login", style: TextStyle(fontSize: 45),),
                  SizedBox(height: 40,),
                  TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,


                    decoration: InputDecoration(

                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,


                    decoration: InputDecoration(

                      labelText: "Password",
                      suffixIcon: IconButton(onPressed: () {
                        debugPrint("hide password");
                      }, icon: Icon(Icons.remove_red_eye)),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),

                    ),
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(onPressed: () {
                    print(password.text);
                    print(email.text);
                  },
                    child: Text("Log in",
                      style: TextStyle(fontSize: 15, color: Colors.white),),
                    color: Colors.blue,),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don\'t have an account"),
                      TextButton(onPressed: () {}, child: Text("sign up")),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
