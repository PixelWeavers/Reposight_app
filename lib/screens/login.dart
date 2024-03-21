import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:reposight/screens/signup.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController em = TextEditingController();
  TextEditingController pas = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    em.dispose();
    pas.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment:MainAxisAlignment.start, 
        children: [
          Image.asset('assets/reposight_logo.jpg',
          fit: BoxFit.contain,
          height: 50,)
        ],) ,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 34),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: em,
              decoration: InputDecoration(
                  label: const Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
            child: TextFormField(
              style: const TextStyle(color: Colors.white),
              controller: pas,
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  label: const Text(
                    "Password",
                    style: TextStyle(color: Colors.white),
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.white))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
      InkWell(
                    onTap: () {
                  
                    },
                    child: Container(
                      height: 38,
                      width: 130,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.purple.shade700)
                      ),
                      child:const  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.login ,color: Colors.white,),
                                 SizedBox(width: 6,),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 16,
                    color:  Colors.white ),
                                )
                              ],
                            ),
                    ),
                  ),
               const SizedBox(height: 15,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create a Account?",
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                             return const SignUp();
                      }));
                    },
                    child: Container(
                      height: 38,
                      width: 130,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(color: Colors.purple.shade700)
                      ),
                      child:const  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.account_circle ,color: Colors.white,),
                                 SizedBox(width: 6,),
                                Text(
                                  'SignUp',
                                  style: TextStyle(
                                    fontSize: 16,
                    color:  Colors.white ),
                                )
                              ],
                            ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
