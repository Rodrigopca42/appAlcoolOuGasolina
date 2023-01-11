import 'package:flutter/material.dart';

class Combustivel extends StatefulWidget {
  const Combustivel({Key? key}) : super(key: key);

  @override
  State<Combustivel> createState() => _CombustivelState();
}

class _CombustivelState extends State<Combustivel> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagem/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Saiba qual é a melhor opção para abastecer o seu carro.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço do Álcool"
                ),
                style: TextStyle(
                    fontSize: 16
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço da Gasolina"
                ),
                style: TextStyle(
                    fontSize: 16
                ),
                controller: _controllerGasolina,
              ),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // background
                    // foreground
                  ),
                  onPressed: () { },
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Resultado",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        ),
    )
   );
  }
}
