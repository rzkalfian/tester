import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.android,
                size: 100,
              ),
              
              SizedBox(height: 75),

              Text(
                'Login',
                style: GoogleFonts.bebasNeue(
                  fontSize: 52,
                ),
              ),

              SizedBox(height: 10),

              Text(
                'Jangan lupa makan',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.grey[200],
                    filled:true,
                  ),
                ),
              ),
              
            ],
          )
        ),
      ),
    );
  }
}