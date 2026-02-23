import 'package:flutter/material.dart';


// --- PÁGINA 2 ---
class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda página 6 º J', style: TextStyle(color: Colors.white)),
        backgroundColor:  const Color(0xFF800000),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://raw.githubusercontent.com/REGV-0501/imagenes-para-flutter-6J-11-02-2026/refs/heads/main/empleado3.png',
                height: 200,
                // The 'placeholder' parameter is not defined for Image.network.
                // Use 'loadingBuilder' instead to show a loading indicator.
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child; // Image is fully loaded, show the image
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),
              child: const Text('Ir a la página final'),
            ),
          ],
        ),
      ),
    );
  }
}