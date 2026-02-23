import 'package:flutter/material.dart';

// --- PÁGINA 3 ---
class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 3 El García', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFF006400), // Verde oscuro
      ),
      body: Container(
        color: const Color(0xFF006400), // Fondo verde para cumplir con "texto blanco" en body
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Has llegado al final!',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text('Volver al Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}