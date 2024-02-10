import 'package:flutter/material.dart';

class IsFull extends StatelessWidget {
  const IsFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Que pena, está cheio! :( '),
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
