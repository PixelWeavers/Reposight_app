import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:reposight/provider/auth_provider.dart';
import 'package:reposight/screens/home.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _email = '';
  String _password = '';
  bool _isSignup = true; // Initial state for sign up

  void _toggleView() {
    setState(() {
      _isSignup = !_isSignup; // Toggle between sign up and sign in
    });
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(mainAxisAlignment:MainAxisAlignment.start, 
        children: [
          Image.asset('assets/reposight_logo.jpg',
          fit: BoxFit.contain,
          height: 50,)
        ],) ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
           Text(_isSignup ? 'Sign Up' : 'Sign In', style: GoogleFonts.lato(fontWeight: FontWeight.w700,fontSize: 36, color: Colors.white),),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    // Username field for sign up only
                    if (_isSignup)
                      TextFormField(
                             style: const TextStyle(color: Colors.white),
                        key: const ValueKey('usernameInput'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username.';
                          }
                          return null;
                        },
                        onSaved: (newValue) => _username = newValue!,
                        decoration: const InputDecoration(label: Text("Username",
                        style: TextStyle(color: Colors.white),),
                        prefixIcon:  Icon(Icons.account_box_sharp,color: Colors.white,),
                       ),
                      ),
                      
                    TextFormField(
style: const TextStyle(color: Colors.white),
                      key: const ValueKey('emailInput'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address.';
                        }
                        return null;
                      },
                      onSaved: (newValue) => _email = newValue!,
                      decoration: const InputDecoration(label:  Text("Email",style: TextStyle(color: Colors.white),)
                      ,
                      prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                      ),
                    ),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      key: const ValueKey('passwordInput'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your password.';
                        }
                        return null;
                      },
                      onSaved: (newValue) => _password = newValue!,
                      obscureText: true,
                      decoration:  const InputDecoration(label:  Text("Password",style: TextStyle(color: Colors.white),),
                      prefixIcon:  Icon(Icons.lock,color: Colors.white,)),
                    ),
                  const SizedBox(height: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      side: BorderSide(color: Colors.purple.shade700)
                      ),
                      onPressed: () async {
                        final form = _formKey.currentState!;
                        if (form.validate()) {
                          form.save();
          
                          try {
                            if (_isSignup) {
                              await authProvider.signUp(_email, _password);
                            } else {
                              await authProvider.signIn(_email, _password);
                            }
                            // Handle successful authentication (e.g., navigate to home screen)
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> HomeScreen()));
                          } on Exception catch (e) {
                            // Display error message (consider using a snackbar or dialog)
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(e.toString()),
                              ),
                            );
                          }
                        }
                      },
                      child: Text(_isSignup ? 'Sign Up' : 'Sign In',style: GoogleFonts.lato(color: Colors.white, fontSize: 18),),
                    ),
                    TextButton(
                      onPressed: _toggleView,
                      child: Text(_isSignup ? 'Have an account?  Sign In' : 'New user?  Sign Up',style: GoogleFonts.lato(color: Colors.white, fontSize: 22),),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
