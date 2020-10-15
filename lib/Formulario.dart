import 'package:flutter/material.dart';
/*-------------------------------------------------  PLANTILLA STATEFUL
class Formulario extends StatefulWidget{
  @override
  FormularioState createState(){
    print("CreateState de Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{
  @override
  Widget build (BuildContext context){
    return Text(" Hola");
  }
}

 */

class Formulario extends StatefulWidget{
  @override
  FormularioState createState(){
    print("CreateState de Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{

  bool _mostrar= false;
  Icon iconoMostrar= Icon(Icons.visibility);
  clickVer(){
    print('Click ver');
    setState(() {
      _mostrar= !_mostrar;
      if (_mostrar) iconoMostrar= Icon(Icons.visibility);
      else iconoMostrar= Icon(Icons.visibility_off) ;
    });

  }

  @override
  Widget build (BuildContext context){
    return
      Row(
        children:[
          Expanded(child:
            TextField(
              obscureText: !_mostrar,    //_ hace la vble privada
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
              ),
            ),
          ),
          IconButton(
            icon: iconoMostrar,
            onPressed: (){
              clickVer();
            }
          )

        ]
      )

     ;
  }
}