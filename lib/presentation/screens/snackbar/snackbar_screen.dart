import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Ola Mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: () {}),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (context) => AlertDialog(
            title: const Text('Titulo'),
            content: const Text('Corpo do dialogo'),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Cancelar'),
              ),
              FilledButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Cancelar'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars e dialogos')),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [const Text('View Licences')],
                );
              },
              child: Text('View Licences'),
            ),
            FilledButton.tonal(
              onPressed: () {
                openDialog(context);
              },
              child: Text('Teste2'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackbar(context);
        },
      ),
    );
  }
}
