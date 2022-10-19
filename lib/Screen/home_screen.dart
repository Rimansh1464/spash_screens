import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spash_screen/Screen/spash1.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
backgroundColor: Colors.redAccent,
        automaticallyImplyLeading: false,
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async{
            //........
            final prefs = await SharedPreferences.getInstance();
            await prefs.setBool("isSplashScreenVisited", false);
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return     spash1();
            } ));

          },
          child: Text(
            "go to spash 1",
            style: GoogleFonts.quicksand(
              fontSize: 15,color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}