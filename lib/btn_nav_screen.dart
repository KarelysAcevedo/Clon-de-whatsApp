/*   
 *    CURSO LIBRE PROFESIONAL II
 * 
 *    Karelys Priscila Acevedo Triana
 *****************************************************************************
 * CLON DE WHATSAPP
 *****************************************************************************
 * PANTALLA PRINCIPAL EN LA QUE SE ENCUENTRA EL WIDGET DE BARRA DE NAVEGACIÓN
 * POR MEDIO DE LA CUAL ACCEDDEREMOS A LAS PANTALLAS PRINCIPALES DE WHATSAPP
 * -MENSAJES -ESTADOS -LLAMADAS
 */

import 'package:flutter/material.dart';
import 'llamadas.dart';
import 'mensajes.dart';
import 'estados.dart';

/*
class Argument {
  final String name;
  final String content;

  Argument(this.name, this.content);
}
*/
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationScreen> {
  // controla el indice seleccinado para mostrar la vista correspondiente
  int _indiceSeleccionado = 0;

  // controla el widget que se mostrará en pantalla
  Widget _currBody = Mensajes();

  //metodo que recibe el indice de seleccion para cambiar de pantalla
  void _onItemTapped(int index) {
    setState(() {
      _indiceSeleccionado = index;

      switch (_indiceSeleccionado) {
        case 0:
          _currBody = Mensajes();
          break;
        case 1:
          _currBody = Estados();
          break;
        case 2:
          _currBody = Llamadas();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //final args = ModalRoute.of(context)!.settings.arguments as Argument;

    return Scaffold(
      //AppBar principal que muestra el titulo de la aplicaion y widget de tipo action
      //los botones buscar y menú no tienen funcionalidad
      appBar: AppBar(title: const Text('WhatsApp'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ]),
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.teal[800], // <-- This works for fixed
        selectedItemColor: Colors.tealAccent[400],
        unselectedItemColor: Colors.blueGrey[100],

        //items para selección de la barra de navegación
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'CHATS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.motion_photos_on),
            label: 'ESTADOS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'LLAMADAS',
          ),
        ],
        currentIndex: _indiceSeleccionado,
        onTap: _onItemTapped,
      ),
    );
  }
}
