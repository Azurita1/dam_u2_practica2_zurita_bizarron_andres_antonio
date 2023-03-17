import 'package:flutter/material.dart';
class Opcion2 extends StatefulWidget {
  const Opcion2({Key? key}) : super(key: key);

  @override
  State<Opcion2> createState() => _Opcion2State();
}

class _Opcion2State extends State<Opcion2> {
  List imagenes =[
    "1.png",
    "2.png",
    "3.png",
    "4.png",
    "5.png",
    "6.png"
  ];
  int _indice = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Text("Temporada 10",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),textAlign: TextAlign.center),
        SizedBox(
          width: 20, height: 20,
        ),
        SizedBox(
          width: 400,
          height: 400,
          child: Image.asset(imagenes[_indice]),
        ),
        SizedBox(
          width: 20, height: 20,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: (){
                retroceder();
              }, child: Text("Anterior")),
              OutlinedButton(onPressed: (){
                avanzar();
              }, child: Text("Siguiente"))
            ]
        )
      ],
    );
  }
  void avanzar(){
    setState((){
      _indice++;
      if(_indice==imagenes.length){
        _indice=0;
      }
    });
  }
  void retroceder(){
    setState(() {
      _indice--;
      if(_indice<0){
        _indice = imagenes.length-1;
      }
    });
  }
}
