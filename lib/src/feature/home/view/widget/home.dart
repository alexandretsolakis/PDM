import 'package:flutter/material.dart';
import 'package:appComida/src/component/minha_app_bar.dart';
import 'package:appComida/assets/repository/pratos_repository.dart';
import 'package:appComida/src/component/pratoItem.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final pratos = PratosRepository.prato;
  

  PreferredSizeWidget _minhaBarra(String texto) {
    return AppBar(
      title: Text(texto, style: const TextStyle(color: Colors.white)),
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
      elevation: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _minhaBarra("Lanches"),
       body: SingleChildScrollView(
              child: Column(
                children: [
                  gerarListaComidas(pratos),          
                ],
              ),
       )
    );
  }
}