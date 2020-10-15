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

class Login extends StatefulWidget{
  @override
  LoginState createState(){
    print("CreateState de Formulario");
    return new LoginState();
  }
}

class LoginState extends State<Login>{

  bool _mostrar= false;
  bool _acceder = false;
  Icon iconoMostrar= Icon(Icons.visibility);


  clickAcceder(){
    print('Click acceder');
    setState(() {
      _acceder= !_acceder;
    });
  }
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

      Container(
          margin: const EdgeInsets.only(left:10.0, top: 100.0, right: 10.0, bottom:350.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Row(children:[
                Expanded(child:
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                  ),
                ),
                ),
              ]

              ),
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
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                        ),
                        child:
                        FlatButton(
                          onPressed: (){clickAcceder();},
                          child: Text('Acceder'),
                        )
                    )
                  ]
              )
        ]

        )
      );
  }
}