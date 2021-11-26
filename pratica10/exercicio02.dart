import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String imc = "";

  calcularIMC() {
    double peso = double.parse(this.peso.text.replaceAll(',', '.'));
    double altura = double.parse(this.altura.text.replaceAll(',', '.'));
    double resultadoIMC = peso / (altura * altura);
    this.imc = resultadoIMC.toStringAsFixed(2);
    return this.imc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: peso,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => peso.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o peso em quilogramas',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: altura,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => altura.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe a altura em metros',
              ),
            ),
          ),
          Text('\n\n'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print(calcularIMC());
                    setState(calcularIMC);
                  },
                  child: Text(
                    'Calcular IMC',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text('\n\n'),
          Text(
            'Seu IMC é: ' + this.imc,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('\n\n'),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.blue,
            child: Table(
              defaultColumnWidth: FixedColumnWidth(200.0),
              border: TableBorder(
                bottom: BorderSide(
                    width: 1, color: Colors.blue, style: BorderStyle.solid),
                left: BorderSide(
                    width: 1, color: Colors.blue, style: BorderStyle.solid),
                right: BorderSide(
                    width: 1, color: Colors.blue, style: BorderStyle.solid),
                horizontalInside: BorderSide(
                    width: 1, color: Colors.blue, style: BorderStyle.solid),
              ),
              children: [
                TableRow(children: [
                  Column(children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        'IMC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ]),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: Text(
                        'Classificação',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ]),
                ]),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '< 16',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Magreza grave',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '16 a < 17',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Magreza moderada',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '17 a 18,5',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Magreza leve',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '18,5 a < 25',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Saudável',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '25 a < 30',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Sobrepeso',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '30 a < 35',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Obesidade Grau I',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '35 a < 40',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Obesidade Grau II (severa)',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.white),
                  children: [
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          '>= 40',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                            fontSize: 14.0,
                          ),
                        ),
                      )
                    ]),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'Obesidade Grau III (mórbida)',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
