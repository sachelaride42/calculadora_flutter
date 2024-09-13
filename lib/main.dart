import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Main();
  }
}

class Main extends State<MainApp> {
  String valor = "";
  TextEditingController controle = TextEditingController();
  List<double> numeros = [];
  List<String> simbolos = [];

  void botao(String simbolo, TextEditingController controle) {
    switch (simbolo) {
      case "1":
        valor = valor + simbolo.toString();
        break;
      case "2":
        valor = valor + simbolo.toString();
        break;
      case "3":
        valor = valor + simbolo.toString();
        break;
      case "4":
        valor = valor + simbolo.toString();
        break;
      case "5":
        valor = valor + simbolo.toString();
        break;
      case "6":
        valor = valor + simbolo.toString();
        break;
      case "7":
        valor = valor + simbolo.toString();
        break;
      case "8":
        valor = valor + simbolo.toString();
        break;
      case "9":
        valor = valor + simbolo.toString();
        break;
      case "0":
        valor = valor + simbolo.toString();
        break;
      case "+":
        numeros.add(double.parse(valor));
        valor = "";
        simbolos.add("+");
        break;
      case "-":
        numeros.add(double.parse(valor));
        valor = "";
        simbolos.add("-");
        break;
      case "*":
        numeros.add(double.parse(valor));
        valor = "";
        simbolos.add("*");
        break;
      case "/":
        numeros.add(double.parse(valor));
        valor = "";
        simbolos.add("/");
        break;
      case "=":
        numeros.add(double.parse(valor));
        simbolos.add("=");
        double resultado = calcular();
        valor = resultado.toString();
        break;
      case ".":
        valor = valor + simbolo.toString();
        break;
      case "C":
        valor = "";
        numeros.clear();
        simbolos.clear();
        break;
    }

    setState(() {
      controle.text = valor;
    });
  }

  double calcular() {
    double res = 0;
    for (int i = 0; i < simbolos.length; i++) {
      if (i == 0) {
        res = res + numeros[i];
      } else {
        switch (simbolos[i - 1]) {
          case "+":
            res = res + numeros[i];
            break;
          case "-":
            res = res - numeros[i];
            break;
          case "*":
            res = res * numeros[i];
            break;
          case "/":
            res = res / numeros[i];
            break;
        }
      }
    }
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculadora"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(readOnly: true, showCursor: true, controller: controle),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextButton(
                onPressed: () {
                  botao("1", controle);
                },
                child: Text("1"),
              ),
              TextButton(
                onPressed: () {
                  botao("2", controle);
                },
                child: Text("2"),
              ),
              TextButton(
                onPressed: () {
                  botao("3", controle);
                },
                child: Text("3"),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    botao("4", controle);
                  },
                  child: Text("4"),
                ),
                TextButton(
                  onPressed: () {
                    botao("5", controle);
                  },
                  child: Text("5"),
                ),
                TextButton(
                  onPressed: () {
                    botao("6", controle);
                  },
                  child: Text("6"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    botao("7", controle);
                  },
                  child: Text("7"),
                ),
                TextButton(
                  onPressed: () {
                    botao("8", controle);
                  },
                  child: Text("8"),
                ),
                TextButton(
                  onPressed: () {
                    botao("9", controle);
                  },
                  child: Text("9"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    botao("+", controle);
                  },
                  child: Text("+"),
                ),
                TextButton(
                  onPressed: () {
                    botao("0", controle);
                  },
                  child: Text("0"),
                ),
                TextButton(
                  onPressed: () {
                    botao("-", controle);
                  },
                  child: Text("-"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    botao("*", controle);
                  },
                  child: Text("*"),
                ),
                TextButton(
                  onPressed: () {
                    botao("/", controle);
                  },
                  child: Text("/"),
                ),
                TextButton(
                  onPressed: () {
                    botao(".", controle);
                  },
                  child: Text("."),
                ),
                TextButton(
                  onPressed: () {
                    botao("=", controle);
                  },
                  child: Text("="),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      botao("C", controle);
                    },
                    child: Text("C")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
