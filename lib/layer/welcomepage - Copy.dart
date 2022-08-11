import 'homepage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 77, 77, 77), Colors.black]
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Selamat Datang',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ),
            Padding(
              padding:const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'di Media Informasi',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
            
            Container(
              width: 250,
              height: 250,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset('img/40.png'),
                  ),
                  Expanded(
                    child: Image.asset('img/49.png')
                  ),
                ],
              ),
            ),
            
            Container(
              child: MaterialButton(
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>(HomePage()),),
                    );
                  },
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  child: Text(
                    'Lanjut',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}