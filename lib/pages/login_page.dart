import 'dart:ui';

import 'package:appyacos/pages/menu_page.dart';
import 'package:appyacos/widgets/circle_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  final TextEditingController tecCorreo = TextEditingController();
  final TextEditingController tecPassword = TextEditingController();
  static final String nombrePagina = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      //alignment: Alignment.topCenter,
      //color: Colors.black,
      decoration: new BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(70, 239, 202, 8),
              Color.fromARGB(70, 187, 222, 240)
            ],
            stops: [
              0.5,
              0.8
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter),
      ),
      child: Column(
        /* mainAxisSize: MainAxisSize.max,  
              mainAxisAlignment: MainAxisAlignment.center, */
        children: [
          Container(
            color: Colors.amber,
            alignment: Alignment.center,
            height: 150,
            margin: EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Image.asset(
              'assets/land.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Iniciar Sesión',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Correo Electrónico",
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              //Icons.person,
                              FontAwesomeIcons.userAlt,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: TextField(
                              controller: tecCorreo,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.blueGrey,
                  width: 280,
                  margin: EdgeInsets.only(top: 20, bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contraseña",
                        style: TextStyle(fontSize: 17),
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              //Icons.lock,
                              FontAwesomeIcons.key,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                controller: tecPassword,
                              ),
                            )
                            //TextField()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Ó',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleButtonWidget(
                      icon: Icon(FontAwesomeIcons.google),
                      onClic: () {
                        print("Google");
                      },
                    ),
                    CircleButtonWidget(
                      icon: Icon(FontAwesomeIcons.facebookF),
                      onClic: () {
                        print("Facebook");
                      },
                    ),
                    CircleButtonWidget(
                      icon: Icon(FontAwesomeIcons.twitter),
                      onClic: () {
                        print("Twitter");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 50,
                  width: 200,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      print(
                          "Usuario: ${tecCorreo.text}, Contraseña: ${tecPassword.text}");
                      if (tecCorreo.text.trim() == "nodier" &&
                          tecPassword.text == "123") {
                        print("Cambio de pantalla");

                        //FORMA DOS PARA NAVEGAR ENTRE PÁGINAS
                        Navigator.pushNamed(context, MenuPage.nombrePagina,
                            arguments: {
                              "correo": tecCorreo.text.trim(),
                              "dato": 29
                            });
                      } else {
                        print("Error en los datos ingresados...");
                      }
                    },
                    child: Text(
                      "Ingresar",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    color: Colors.amber,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                        onPressed: null, child: Text("Recordar Contraseña")),
                    FlatButton(onPressed: null, child: Text("Crear Cuenta"))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
