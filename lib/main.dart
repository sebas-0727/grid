import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'nose sobre que hacerla ';

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 30, 136, 229), // Color del tema
        hintColor: Colors.white, // Color de acento
        scaffoldBackgroundColor: Colors.grey[200], // Color de fondo del scaffold
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 30, 136, 229), // Color del app bar
        ),
      ),
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  // Lista de URLs de las imágenes de perros
  final List<String> imageUrls = [
//urls de imagenes
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Número de columnas
        children: List.generate(imageUrls.length, (index) {
          return Center(
            child: Card(
              child: InkWell(
                onTap: () {
                  // Acción al hacer clic en el elemento del grid
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrls[index]), // URL de la imagen de perro
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 30, 136, 229),
              ),
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 30, 136, 229)),
                accountName: Text(
                  "Sebastian Cardona",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("sebastian.cardona@example.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.transparent, // Fondo transparente
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/236x/6c/f9/6e/6cf96e692dde8046be75d15a788ba077.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' perfil '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' #### '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('ajustes'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
