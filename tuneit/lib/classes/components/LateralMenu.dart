import 'package:flutter/material.dart';
import "package:tuneit/pages/playlists.dart";
import "package:tuneit/pages/profile.dart";
import "package:tuneit/pages/equalizer.dart";
import "package:tuneit/pages/friendList.dart";
import "package:tuneit/pages/notificaciones.dart";

import '../../main.dart';
import 'Searcher.dart';
class LateralMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
        //  Image(image: AssetImage('assets/LogoAppName.png'),),
          new UserAccountsDrawerHeader(
            currentAccountPicture: Image(image: AssetImage('assets/LogoAppName.png'),fit: BoxFit.contain),
              accountName: Text('TuneIt'),
              accountEmail: Text('tuneit@music.es'),
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
            title: Text('NOTIFICACIONES'),
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
                   builder: (context) => Profile(),
                  ),
                );
              }
          ),
          new ListTile(
              title: Text('ECUALIZADOR'),
              onTap:() {
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Equalizer(),
                  ),
                );
              }
            ),
        ],
      ),
    );
  }
}