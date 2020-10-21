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

//***************************************************************************************    FORMULARIO
class Formulario extends StatefulWidget{
  @override
  FormularioState createState(){
    print("CreateState de Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{
  bool _acceder=false;
  Login _log = new Login();
  Mail _mail = new Mail();
  String _txtBoton = ('Acceder');

  clickAcceder(){
    print('Click acceder');
    setState(() {
      _acceder= !_acceder;
      if (_acceder) _txtBoton=('Salir');
      else _txtBoton=('Acceder');
    });
  }

  @override
  Widget build (BuildContext context){
    return
      Container(
        margin: const EdgeInsets.only(left:10.0, top: 100.0, right: 10.0, bottom:300.0),
        child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              if (!(_acceder)) _log
              else _mail,
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
                          child: Text(_txtBoton),
                        )
                    )
                  ]
              ),
            ]

        ),
      );

  }
}


//***************************************************************************************    LOGIN
class Login extends StatefulWidget{
  @override
  LoginState createState(){
    print("CreateState de Login");
    return new LoginState();
  }
}

class LoginState extends State<Login>{

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
      Container(
        margin: const EdgeInsets.only(left:10.0, top: 10.0, right: 10.0, bottom:10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Container(
                padding: const EdgeInsets.only(top: 10, bottom:10),
                child:Row(children:[
                  Expanded(child:
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                  ),
                ]

                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, bottom:10),
                child:
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
              ),


        ]
          )
        );
  }
}

//***************************************************************************************    MAIL
class Mail extends StatefulWidget{
  @override
  MailState createState(){
    print("CreateState de Mail");
    return new MailState();
  }
}

class MailState extends State<Mail>{
  @override
  Widget build (BuildContext context){
    return
      Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Row(children:[
                  Expanded(child:
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  ),
                ]
                ),
              ]
          );
  }
}