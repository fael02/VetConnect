import 'package:flutter/material.dart';
import 'package:vetconnect/views/Cadastro_Localizacao_VET/tela_cadastro_localizacao_VET.dart';
import 'package:vetconnect/views/Cadastro_Vet/componentes/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "CADASTRO CLÍNICA/VETERINÁRIO",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Email",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Nome",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Descrição",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Atende a Domicílio",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Telefone",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Senha",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Confirmar Senha",
                border: InputBorder.none,
              ),
            ),
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            width: size.width * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Colors.indigo[800],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return TelaCadastroLocalizacaoVET();
                      },
                    ),
                  );
                },
                child: Text(
                  "PRÓXIMA ETAPA",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
