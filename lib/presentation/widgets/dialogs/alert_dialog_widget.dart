import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const AlertDialogWidget({super.key, required this.onPressed});

  static Future<void> show(BuildContext context, VoidCallback onPressed) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialogWidget(onPressed: onPressed);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AlertDialog(
      icon: const Icon(Icons.info_rounded, color: Colors.blue, size: 100),
      title: Text('Permiso requerido', style: theme.displaySmall),
      content: SingleChildScrollView(
          child: ListBody(children: <Widget>[
        Text('Necesitamos que nos otorgues este permiso para que la aplicación funcione correctamente.',
            style: theme.bodyLarge),
        SizedBox(height: 10),
        Text('Parece que el permiso ha sido denegado permanentemente. Por favor, ve a los ajustes de la aplicación para activarlo manualmente.',
            style: theme.bodyLarge?.copyWith(fontWeight: FontWeight.bold)),
      ])),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,),
                child: const Text('Cancelar'),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: TextButton(
                child: const Text('Aceptar'),
                onPressed: () {
                  Navigator.pop(context);
                  onPressed();
              }),
            ),
          ],
        ),
      ],
    );
  }
}
