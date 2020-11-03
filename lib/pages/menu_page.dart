import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  static final String nombrePagina = "menu";

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    Map datos = ModalRoute.of(context).settings.arguments;
    print(datos);
    String correo = datos['correo'];
    int num = datos['dato'];
    int seleccionado = 0;

    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Pagina de Listado - $correo'),
          ),
          body: Container(
            child: Column(
              children: [
                Column(
                  children: [
                    // Text('Pagina Listado'),
                    // Text('$correo - $num')
                    Text('Pagina Listado'),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 165,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          /* EjercicioItemWidget(),
                          EjercicioItemWidget(),
                          EjercicioItemWidget(), */
                        ],
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Volver'),
                )
                //Navigator.popAndPushNamed(context, LoginPage.nombrePagina);
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                print('Selecciono: $value');
                seleccionado = value;
                setState(() {});
              },
              selectedIconTheme: IconThemeData(
                color: Colors.amber,
              ),
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,
              currentIndex: seleccionado,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.home), label: 'Inicio'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.dumbbell), label: 'Favoritos'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.chartBar), label: 'Evolución'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.utensils),
                    label: 'Alimentación'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.userAlt), label: 'Perfil'),
              ]),
        ));
  }
}
