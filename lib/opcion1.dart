import 'package:flutter/material.dart';

class Opcion1 extends StatefulWidget {
  const Opcion1({Key? key}) : super(key: key);

  @override
  State<Opcion1> createState() => _Opcion1State();
}

class _Opcion1State extends State<Opcion1> {
  final mensaje = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      children: [
        Container(
            child: RichText(text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: 'Rocket',style: TextStyle(fontSize: 40)),
                  TextSpan(text: 'League',style: TextStyle(fontSize: 50,fontFamily: AutofillHints.countryCode,fontWeight: FontWeight.bold)),
                ],style: TextStyle(color: Colors.blue,wordSpacing: BorderSide.strokeAlignCenter)
            ),textAlign: TextAlign.center,)
        ),
        Image.asset('Rocket.jpg',width: 500,height: 400,),
        SizedBox(width: 30,height: 30,),
        Container(
          child: RichText(text:TextSpan(
            children: <TextSpan>[
              TextSpan(text: '')
            ]
          )),
        ),
        SizedBox(width: 30,height: 30,),
        Text("¿Te gusta Rocket League? Dejanos un comentario para saber tu opinion",style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
        TextField(
          controller: mensaje,
          decoration: InputDecoration(labelText: "Escribe aquí"),),
        ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Gracias por el mensaje")));
          mensaje.text=('');
          }, child: const Text("Enviar"),
          style:ButtonStyle(alignment: Alignment.center),
        )



      ],
    );
  }
}
