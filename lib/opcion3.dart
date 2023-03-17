import 'package:flutter/material.dart';

class Opcion3 extends StatefulWidget {
  const Opcion3({Key? key}) : super(key: key);

  @override
  State<Opcion3> createState() => _Opcion3State();
}

class _Opcion3State extends State<Opcion3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(60),
      children: [
        Image.asset('LogoTec.png', width: 300,height: 300,),
        SizedBox(height: 60),
        const Text("(C) RESERVADOS ANDRÉS ZURITA", style: TextStyle(fontSize: 30,color: Colors.red,),textAlign: TextAlign.center),
        const Text("INSTITUTO TECNOLÓGICO DE TEPIC", style: TextStyle(fontSize: 15,color: Colors.blueAccent),textAlign: TextAlign.center,)
      ],
    );
  }
}
