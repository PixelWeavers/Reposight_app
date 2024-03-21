import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController em = TextEditingController();
  TextEditingController pas = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    em.dispose();
    pas.dispose();
    name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/reposight_logo.jpg',
                fit: BoxFit.contain,
                height: 50,
              )
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SignUp",
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
                controller: name,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    label: const Text(
                      "Enter name",
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
            const SizedBox(height: 10,),
            InkWell(
              onTap: () {},
              child: Container(
                height: 38,
                width: 170,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  
                    border: Border.all(color: Colors.purple.shade700)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Create Account',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
