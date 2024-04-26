import 'package:flutter/material.dart';

//PantallaInicial_0967
//
class PantallaInicial_0967 extends StatelessWidget {
  const PantallaInicial_0967({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sweet Queen Molina0967",
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xff470505),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffab2121),
                  textStyle: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.pushNamed(context, "/Pantalla1_0967");
              },
              child: Text("Pantalla1", style: TextStyle(color: Colors.white)),
            ),
          ], //Niños Widgets
        ),
      ),
    );
  } //Fin de widget
} //Fin pantalla inicial
