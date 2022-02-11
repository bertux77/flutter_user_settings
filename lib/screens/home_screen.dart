import 'package:flutter/material.dart';
import 'package:flutter_settings/widgets/side_menu.dart';
import 'package:flutter_settings/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('IsDarkmode: ${Preferences.isDarkmode}'),
            const Divider(),
            Text('Genero: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre: ${Preferences.name}')
          ],
        ));
  }
}
