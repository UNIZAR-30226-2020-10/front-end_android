import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuneit/classes/components/audio/audioPlayerClass.dart';
import 'package:tuneit/classes/values/ColorSets.dart';
import 'package:tuneit/classes/values/Globals.dart';
import 'package:tuneit/pages/artists.dart';
import 'package:tuneit/pages/audio/equalizer.dart';
import 'package:tuneit/pages/ayuda.dart';
import "package:tuneit/pages/profile.dart";
import 'package:tuneit/pages/register/login.dart';
import 'package:tuneit/pages/register/mainView.dart';
import 'package:tuneit/pages/social/friend.dart';
import 'package:tuneit/pages/social/notificaciones.dart';
import 'package:tuneit/pages/audio/playlists.dart';

import '../pages/paginaInicial.dart';
class LateralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(Globals.image),
              ),
              accountName: Text(Globals.name),
              accountEmail: Text(Globals.email),
          ),
          new ListTile(
            title: Text('PAGINA PRINCIPAL'),
            onTap:(){
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            }
          ),
          new ListTile(
              title: Text('MUSICA'),
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayLists(true),
                  ),
                );
              }
          ),
          new ListTile(
              title: Text('PODCASTS'),

              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlayLists(false),
                  ),
                );
              }
          ),
          new ListTile(
              title: Text('ARTISTAS'),

              onTap:(){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Artists(),
                  ),
                );
              }
          ),
          new ListTile(
            title: Text('NOTIFICACIONES'),
              subtitle:Globals.mensajes_nuevo>0?Text("Nuevos mensajes "+ Globals.mensajes_nuevo.toString()):null,
            onTap:() {
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Notificaciones(),
                ),
              );
            }


          ),
          new ListTile(
              title: Text('AMIGOS'),
              onTap:() {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => Friend_List(),
                ),
                );
              }
          ),
          new ListTile(
              title: Text('PERFIL'),
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(name:Globals.name,email: Globals.email,country: Globals.country,date: Globals.date,esUser: true,image: Globals.image,),
                  ),
                );
              }
          ),
          new ListTile(
              title: Text('AYUDA'),
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Ayuda(),
                  ),
                );
              }
          ),
          new ListTile(
              title: Text('CERRAR SESION'),
              onTap:() async {
                audioPlayerClass _audioPlayerClass = new audioPlayerClass();
                _audioPlayerClass.pause();
                final prefs = await SharedPreferences.getInstance();
                prefs.setString('user', '0');
                prefs.setString('password', '0');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainView(),
                  ),
                );
              }
          ),
        ],
      ),
    );
  }
}