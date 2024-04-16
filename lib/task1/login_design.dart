import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    var user_email = 'hamza@gmail.com';
    var user_password = 'hamza123';
    var emailtext = TextEditingController();
    var passtext = TextEditingController();
    return Scaffold(
      body: Container(
        color: Colors.lightBlue[50],
        width: 400,
        height: 590,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 50,
                color: Colors.blue,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'Login Page',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 200,
                  margin: EdgeInsets.only(top: 80),
                  // padding: EdgeInsets.only(top: 60),
                  child: Image.asset('images/Google-flutter-logo.png'),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 320,
                  child: Column(
                    children: [
                      TextField(
                        controller: emailtext,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        controller: passtext,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text('Forgot Password',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.only(left: 80, right: 80),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          onPressed: () {
                            if (user_email == emailtext.text &&
                                user_password == passtext.text) {
                              context.go('/startup');
                            } else {
                              return null;
                            }
                            // String uemail = emailtext.text;
                            // String upass = passtext.text;

                            // print('Email: $uemail, Password: $upass');
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('New User? '), Text('Create Account')],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
