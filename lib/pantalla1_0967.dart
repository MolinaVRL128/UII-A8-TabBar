//Pantalla1_0967
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Pantalla1_0967 extends StatelessWidget {
  const Pantalla1_0967({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Pantalla1 Molina0967", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff470505),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                print("Botón presionado");
              },
              child: Text("Botón",
                  style: TextStyle(fontSize: 40, color: Colors.white)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                overlayColor:
                    MaterialStateProperty.all<Color>(Color(0xff7e1811)),
              ),
            ),
            OutlinedButton(
                onPressed: () {
                  print("Botón delineado presionado");
                },
                child: Text("Botón delineado"),
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xffad3131)),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Color(0xffe31e1e);
                    }
                    return Color(0xff521111);
                  }),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic);
                    }
                    return TextStyle();
                  }),
                )),
            TextButton(
              onPressed: () {
                print("Botón de texto presionado");
              },
              child: Text("Botón de texto"),
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print("Botón con icono presionado!");
              },
              icon: Icon(Icons.home),
              label: Text("Botón con icono", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  } //Fin widget
} //Fin pantalla1
