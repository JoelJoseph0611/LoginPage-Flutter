import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController Phonenumber = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController password1 = TextEditingController();
  GlobalKey<FormState> logindetail = GlobalKey();
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(

        backgroundColor: Color(0xFFF4D756),

        title: Text("Login Page",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
      ),


      backgroundColor: Color(0xFFF4D756),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text("Welcome to ", style: TextStyle(fontSize: 25),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text("MY PAGE", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black54),),
          ),
          SizedBox(height: 20, width: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text("Please login to continue..", style: TextStyle(fontSize: 22),),
          ),
          Form(
              key: logindetail,
              child: Column(
                children: [

                  SizedBox(
                    height: 10,
                  ),


                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: username,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEDCC42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Enter Your Username",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      validator: (username) {
                        if (username!.isEmpty) {
                          return "Field can't be empty";
                        }
                        if (username.contains(' ')) {
                          return 'Username cannot contain spaces';
                        }
                        return null;
                      },
                    ),
                  ),




                  SizedBox(
                    height: 10,
                  ),



                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      controller: Phonenumber,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEDCC42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Enter Your Number",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      validator: (Phonenumber) {
                        if (Phonenumber!.isEmpty) {
                          return "Field can't be empty";
                        }
                        if (Phonenumber.length != 10) {
                          return 'Phone number must have exactly 10 digits';
                        }
                        return null;
                      },
                    ),
                  ),




                  SizedBox(
                    height: 10,
                  ),




                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      controller: password1,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEDCC42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                      ),


                      validator: (password1) {
                        if (password1!.isEmpty) {
                          return "Field can't be empty";
                        }
                        return null;
                      },
                    ),
                  ),


                  SizedBox(
                    height: 10,
                  ),





                  SizedBox(
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      obscureText: true,
                      controller: password2,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFEDCC42),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.black)),
                        hintText: "Confirm Your Password",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      validator: (password2) {
                        if (password2!.isEmpty) {
                          return "Field can't be empty";
                        }
                        _password = password1.text;
                        if (password2.toLowerCase() != _password.toLowerCase()) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),




                  SizedBox(
                    height: 25,
                  ),




                  Container(
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          if (logindetail.currentState!.validate()) {
                            print("form validated");
                          }
                        },
                        style: TextButton.styleFrom(backgroundColor: Colors.black),
                        child: Text("               Login               ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
