import 'package:flutter/material.dart';
import 'package:flutter_application/pages/user_profile/user_profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(children: [
                Flexible(
                  flex: 5,
                  child: Image.asset(
                    'assets/images/ype.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                const Text('Ype'),
              ]),
            ),
            Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                const ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Pedidos'),
                ),
                const ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('Carrinho'),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Usuário'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserProfilePage(),
                        ));
                  },
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 107, 102, 114),
        title: const Text(
          'Main Page',
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Pedidos"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Carrinho"),
              ),
            ],
          )
        ],
        // leading: IconButton(
        //   onPressed: () {
        //     showDialog(
        //       context: context,
        //       builder: (BuildContext context) {
        //         return const AlertDialog(
        //           title: Text('Alerta'),
        //           content: Text('Você clicou no ícone de menu'),
        //         );
        //       },
        //     );
        //   },
        //   icon: const Icon(Icons.menu),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: onTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuário',
          ),
        ],
        selectedItemColor: const Color(0xFF6200EE),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
    return scaffold;
  }

  void onTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}
