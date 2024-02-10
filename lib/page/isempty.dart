import 'package:flutter/material.dart';

class IsEmpty extends StatelessWidget {
  const IsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Está vazio! Aproveite :D'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Retorna para a HomePage
            Navigator.pop(context);
          },
          child: const Text('Voltar para a Página Inicial'),
        ),
      ),
    );
  }
}
