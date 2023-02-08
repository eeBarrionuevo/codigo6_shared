import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() {
    //Obterner los datos del shared preferences
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mi Perfil",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Text(
                "Elvis Barrionuevo",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Nombre completo",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Av. Lima 12323",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Dirección",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "idadad@gmail.com",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Correo electrónico",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
