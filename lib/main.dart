import 'package:flutter/material.dart';
import 'paginas/pagina1.dart';
import 'paginas/pagina2.dart';
import 'paginas/pagina3.dart';

void main() {
  runApp(const MiAppGarcia());
}

class MiAppGarcia extends StatelessWidget {
  const MiAppGarcia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación García',
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de rutas nombradas
      routes: {
        '/': (context) => PaginaUno(),
        '/segunda': (context) => PaginaDos(),
        '/tercera': (context) => PaginaTres(),
      },
    );
  }
}