import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      // width: 100,
      // elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage(
                  "https://images.pexels.com/photos/11592804/pexels-photo-11592804.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 36,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Fiorella Montes Gonzales",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Text(
                  "fiorellamontes@gmail.com",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text(
              "Mi perfil",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              "Configuración",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.price_change,
            ),
            title: Text(
              "Mis ventas",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.pie_chart,
            ),
            title: Text(
              "Reportes",
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
            ),
            title: Text(
              "Cerrar Sesión",
            ),
          ),
        ],
      ),
    );
  }
}
