import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                    "https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213783/pexels-photo-213783.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213784/pexels-photo-213784.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213785/pexels-photo-213785.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213786/pexels-photo-213786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213787/pexels-photo-213787.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213788/pexels-photo-213788.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DescricaoFoto(
                          'Nova York, EUA',
                          'A cidade de Nova York compreende 5 distritos situados' +
                              ' no encontro do rio Hudson com o Oceano Atlântico. ' +
                              'No centro da cidade fica Manhattan, um distrito com ' +
                              'alta densidade demográfica que está entre os principais' +
                              ' centros comerciais, financeiros e culturais do mundo (Wikipedia).'),
                    ),
                  );
                },
                child: Image.network(
                  "https://images.pexels.com/photos/213789/pexels-photo-213789.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescricaoFoto extends StatelessWidget {
  final String cidade, descricao;

  DescricaoFoto(this.cidade, this.descricao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.cidade),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.cidade,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              margin: EdgeInsets.fromLTRB(80, 80, 80, 0),
              alignment: AlignmentDirectional.center,
            ),
            Container(
              child: Text(
                this.descricao,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.all(80),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => {
          Navigator.pop(context),
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
