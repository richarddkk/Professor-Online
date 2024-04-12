//import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(Mainpage());
}

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 38, 119, 108),
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Text(
            'Professor Online',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          alignment: Alignment.topLeft,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.only(bottom: 20.0),
              currentAccountPicture: Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: CircleAvatar(
                  //backgroundImage: AssetImage('path/to/image'),
                ),
              ),
              accountName: Text('Nome do Professor'),
              accountEmail: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('email@professor.ce.gov.br'),
                  Text(
                    'O portal do professor da rede estadual',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 119, 108),
              ),
              otherAccountsPictures: [
                // Add additional account pictures if needed
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Dados Pessoais'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Horários'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Calendário Letivo'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Minhas Turmas'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Frequência'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.assessment),
              title: Text('Avaliações e notas'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Plano de Ensino'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.note),
              title: Text('Registro de aula'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Atividades'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),
            ListTile(
              
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
//              leading: Icon(Icons.exit_to_app),
              title: Row( // Utiliza Row para alinhar o botão "Sair da conta" com o ícone
                children: [
                  Icon(Icons.exit_to_app),
                  TextButton(
                    onPressed: () => {Navigator.pushNamed(context, '/')},
                    child: Text("Sair da conta"),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black45),
            ListTile(
              title: Text('Informações'),
              textColor: Color.fromARGB(255, 134, 134, 134), 
             iconColor: Color.fromARGB(255, 38, 119, 108),
            ),

            Divider(color: Colors.black45),

            ListTile(
              leading: Icon(Icons.autorenew),
              title: Text('Sincronizar'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configurações'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text('Sobre'),
             iconColor: Color.fromARGB(255, 38, 119, 108),
             textColor: Color.fromARGB(255, 38, 119, 108),
            ),

            Container(
              color: Colors.grey[300],
              padding: EdgeInsets.all(30.0),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: [
                  Text('Desenvolvido por: \nSEDUC Ceará / ASTIN III'),
                  Icon(Icons.facebook, color: Color.fromARGB(255, 75, 75, 75)),
                  SizedBox(width: 5),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/2175/2175198.png",
                    color: Color.fromARGB(255, 75, 75, 75),
                    height: 23.5,
                  ),
                  SizedBox(width: 5),
                  Image.network(
                    "https://cdn.icon-icons.com/icons2/2428/PNG/512/twitter_black_logo_icon_147062.png",
                    height: 20,
                    color: Color.fromARGB(255, 75, 75, 75),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 0),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(0),
              child: Image.asset(
                'assets/quadronegro.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 184, 220, 220),
              child: Column(
                children: [
                  Text(
                    'Professor Online SEDUC',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'O portal do professor da rede estadual',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 38, 119, 108),
              child: Text(
                'Bem vindo',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/caixa.png',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Nenhum item encontrado!',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
