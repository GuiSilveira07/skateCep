import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHttps extends StatefulWidget {
  @override
  _MyHttpsState createState() => _MyHttpsState();
}

class _MyHttpsState extends State<MyHttps> {
  String resultado = "seu cep irá aparecer aqui";

  TextEditingController txtcep = TextEditingController();

  void buscaCep() async {
    String cep = txtcep.text;

    String url = "https://viacep.com.br/ws/$cep/json/";

    http.Response response;

    response = await http.get(Uri.parse(url));

    print("Resposta:" + response.body);

    print("StatusCode:" + response.statusCode.toString());

    Map<String, dynamic> dados = json.decode(response.body);
    String logradouro = dados["logradouro"];
    String complemento = dados["complemento"];
    String bairro = dados["bairro"];
    String localidade = dados["localidade"];
    String uf = dados["uf"];
    String ibge = dados["ibge"];
    String gia = dados["gia"];
    String ddd = dados["ddd"];
    String siafi = dados["siafi"];

    String endereco =
        "O Endereço é:\n Logadouro:$logradouro\n complemento:$complemento\n bairro:$bairro\n localidade:$localidade\n uf:$uf\n ibge:$ibge\n gia:$gia\n ddd:$ddd\n siafi:$siafi";

    setState(() {
      resultado = endereco;
      Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Consumo de API"),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 465,
                color: Colors.white,
                child: TextField(
                  controller: txtcep,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Digite um cep: ex:18110090"),
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 465,
                    child: RaisedButton(
                      padding: EdgeInsets.all(20),
                      color: Color.fromARGB(255, 23, 255, 2),
                      child: Text(
                        "Buscar Cep",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: buscaCep,
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Text(
                  resultado,
                  style: TextStyle(
                    height: 1.20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
