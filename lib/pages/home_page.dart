import 'package:codigo6_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  int age = 0;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> save() async {
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    mandarina.setString("name", _nameController.text);
    mandarina.setString("address", _addressController.text);
    mandarina.setString("email", _emailController.text);
    // mandarina.setInt("age", 30);
    print("Guadando...");
  }

  Future<void> getData() async {
    SharedPreferences mantequilla = await SharedPreferences.getInstance();
    print(mantequilla.getString("name"));
    name = mantequilla.getString("name") ?? "No disponible";
    age = mantequilla.getInt("age") ?? 0;
    setState(() {});
  }

  Future<String> getName() async {
    SharedPreferences matasquita = await SharedPreferences.getInstance();
    return matasquita.getString("name") ?? "-";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shared Preferences"),
      ),
      drawer: MyDrawerWidget(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nameController,
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(RegExp("[A-Za-z]")),
                  // ],
                  decoration: InputDecoration(
                    hintText: "Nombre completo",
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: "Dirección",
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Correo electrónico",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    save();
                  },
                  child: Text(
                    "Guardar",
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     getData();
                //   },
                //   child: Text(
                //     "Obtener",
                //   ),
                // ),
                // Text(
                //   name,
                // ),
                // FutureBuilder(
                //   future: getName(),
                //   builder: (BuildContext context, AsyncSnapshot snap) {
                //     if (snap.hasData) {
                //       return Text(snap.data);
                //     }
                //     return CircularProgressIndicator();
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
