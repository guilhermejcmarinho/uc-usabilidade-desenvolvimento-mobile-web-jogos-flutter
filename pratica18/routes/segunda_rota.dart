import 'package:flutter/material.dart';

class SegundaRota extends StatelessWidget {
  const SegundaRota({Key? key}) : super(key: key);

  static String routeName = '/segunda_rota';

  @override
  Widget build(BuildContext context) {
    ArgumentosRota argumentosRota =
        ModalRoute.of(context)!.settings.arguments as ArgumentosRota;

    return Scaffold(
      backgroundColor: argumentosRota.color,
      appBar: AppBar(
        title: Text(argumentosRota.title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              argumentosRota.title,
              style: TextStyle(
                color: Colors.red,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
            SizedBox(
              height: 80,
              width: MediaQuery.of(context).size.width - 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(argumentosRota.textButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArgumentosRota {
  final String title;
  final String textButton;
  final Color color;

  ArgumentosRota({
    this.title = 'Segunda Rota',
    this.textButton = 'Voltar para a primeira rota',
    required this.color,
  });
}
