import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/Quiz.dart';
import 'package:quizapp/main.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:quizapp/quiz.dart';
void main(){
   runApp(const LoginPage());
}


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override

  Widget build(BuildContext context){
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginApp(),
    );
  }
}


class LoginApp extends StatefulWidget{
    const LoginApp({super.key});

    @override 

    State createState ()=> _LoginAppState();
}

class _LoginAppState extends State{
      @override
      TextEditingController _emailController = TextEditingController();
      TextEditingController _passController = TextEditingController();

      GlobalKey<FormFieldState> _emailKey = GlobalKey<FormFieldState>();
      GlobalKey<FormFieldState> _passKey = GlobalKey<FormFieldState>();

      void validation(){
        bool emailValidated = _emailKey.currentState!.validate();
        bool passValidated = _passKey.currentState!.validate();

        String enteredEmail = _emailController.text;
        String enteredPass = _passController.text;

       String correctEmail="abhishek@gmail.com";
       String correctPass = "abhishek";

       if(enteredEmail==correctEmail && enteredPass == correctPass){
          if(emailValidated && passValidated){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Login SuccessFul")));
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>const Quiz()),
                );
          }else{
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Login SuccessFul")));
          }
       }else{
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Enter Correct Email or password")));  
       }

      }


      @override 
      Widget build(BuildContext context){
          return Scaffold(
            backgroundColor: Color.fromARGB(246, 255, 255, 255),
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
               "LoginPage",// Align text to center
                 style: TextStyle(
                   fontFamily: 'Quicksand', // Custom font family
                   fontSize: 25.0, // Font size
                   fontWeight: FontWeight.bold, // Font weight
                   color: Color.fromARGB(255, 253, 253, 253), // Text color
                   letterSpacing: 1.1,
                 ),
                 ) ,
                 backgroundColor: Colors.teal,
                ),

                body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.network('https://cdn-icons-png.flaticon.com/512/5692/5692030.png',
                          // height: 100,
                          width: 200,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:  EdgeInsets.only(left: 20),
                              child: Text("Email",style: TextStyle(
                                  fontFamily: 'Quicksand',
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 10, 12, 14),
                                    fontWeight: FontWeight.w500
                              ),),
                            ),
                         ),
                         const SizedBox(height: 5,),
                          SizedBox(
                            height: 60,
                            width: 350,
                            child: TextFormField(
                                controller: _emailController,
                                key: _emailKey,
                                decoration: const InputDecoration(
                                  
                                  fillColor: Color.fromRGBO(235, 232, 232, 0.498),
                                  filled: true,
                                  hintText: "Enter your email",
                                  hintStyle: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 10, 12, 14),
                                    fontWeight: FontWeight.w300
                                  ),
                                    // labelText: "Email",
                                    // labelStyle: TextStyle(
                                    // fontFamily: 'Quicksand',
                                    // fontSize: 15,
                                    // color: Color.fromARGB(255, 14, 7, 7),
                                    // fontWeight: FontWeight.w300
                                    // ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27),
                                    ),
                                     borderSide: BorderSide(
                                      color: Color.fromARGB(255, 0, 183, 255),
                                      width: 1.1,
                                      style: BorderStyle.solid,
                                    )
                                  ),
                                   errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27),
                                    ),
                                     borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      width: 1.1,
                                      style: BorderStyle.solid,
                                    )
                                  )
                                ),
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return "Please enter email";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:  EdgeInsets.only(
                                left: 20,
                              ),
                              child: Text("Password", style: TextStyle(
                                  fontFamily: 'Quicksand',
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 10, 12, 14),
                                    fontWeight: FontWeight.w500
                              ),),
                            ),
                         ),
                         const SizedBox(
                            height: 5,
                         ),
                            SizedBox(
                              height: 60,
                              width: 350,
                              child: TextFormField(
                                controller: _passController,
                                key: _passKey,
                                decoration: const InputDecoration(
                                 fillColor: Color.fromRGBO(235, 232, 232, 0.498),
                                  filled: true,
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 10, 12, 14),
                                    fontWeight: FontWeight.w300
                                  ),
                                    // labelText: "Email",
                                    // labelStyle: TextStyle(
                                    // fontFamily: 'Quicksand',
                                    // fontSize: 15,
                                    // color: Color.fromARGB(255, 14, 7, 7),
                                    // fontWeight: FontWeight.w300
                                    // ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27),
                                    ),
                                     borderSide: BorderSide(
                                      color: Color.fromARGB(255, 0, 183, 255),
                                      style: BorderStyle.solid,
                                    )
                                  ),
                                   errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(27),
                                    ),
                                     borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      style: BorderStyle.solid,
                                    )
                                  )
                                ),
                                validator: (value){
                                  if(value==null || value.isEmpty){
                                    return "Please enter email";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                                        ),
                            ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding:  EdgeInsets.only(right: 20),
                              child: Text("Forgot Password",style: TextStyle(
                                  fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 10, 12, 14),
                                    fontWeight: FontWeight.w400
                              ),),
                            ),
                         ),
                          const SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: validation,
                            child: Container(
                            height: 60,
                              width: 350,
                              decoration:const BoxDecoration(
                                color: Colors.teal,
                                  borderRadius: BorderRadius.all(Radius.circular(27))

                              ),
                              child: const Center(
                               child: Text("Login", style: TextStyle(
                                 fontFamily: 'Quicksand',
                                    fontSize: 23,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w500
                               ),),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    
                ),
                       );
                     }
}