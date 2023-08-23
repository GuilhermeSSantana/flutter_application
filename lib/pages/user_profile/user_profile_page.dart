import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      const Text(
        'Perfil do usuário',
        style: TextStyle(fontSize: 30),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Voltar'),
      )
    ]));
  }
}
