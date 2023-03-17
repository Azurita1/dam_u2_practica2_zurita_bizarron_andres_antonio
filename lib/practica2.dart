import 'package:dam_u2_practica2_zurita_bizarron_andres_antonio/opcion1.dart';
import 'package:dam_u2_practica2_zurita_bizarron_andres_antonio/opcion2.dart';
import 'package:dam_u2_practica2_zurita_bizarron_andres_antonio/opcion3.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
class Practica2 extends StatefulWidget {
  const Practica2({Key? key}) : super(key: key);

  @override
  State<Practica2> createState() => _Practica2State();
}

class _Practica2State extends State<Practica2> {
  int _indice= 0;
  void _cambiarIndice(int indice){
    setState(() {
      _indice = indice;
    });
  }  // cambiarIndice
  final List<Widget>_paginas =[
    Opcion1(),
    Opcion2(),
    Opcion3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica 2"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.accessibility_new_outlined))
        ],

      ),
      body:
      _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.photo),label: "Fotos de temporada"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Acerca de...")
        ],
        currentIndex: _indice,
        showSelectedLabels: false,
        iconSize: 30,
        backgroundColor: Colors.black45,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        onTap: _cambiarIndice,
      ),
    );
  }
}
