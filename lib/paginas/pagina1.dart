import 'package:flutter/material.dart';

// --- PÁGINA 1 ---
class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio García 6 º J', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF800000), // Color Guinda
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xFF001F3F), // Azul oscuro
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: Text(
                  'Contenedor\nPrincipal',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text('Ir a la siguiente página'),
            ),
          ],
        ),
      ),
    );
  }
}