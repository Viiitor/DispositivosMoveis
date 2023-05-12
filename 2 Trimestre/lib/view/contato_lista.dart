import 'package:flutter/material.dart';
import 'package:flutter_application_1/database/fake/contato_dao.dart';
import 'package:flutter_application_1/rota.dart';
import 'package:flutter_application_1/view/dto/contato.dart';
import 'package:flutter_application_1/view/interface/contato_dao_interface.dart';

class ContatoLista extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Contatos')),
      body: criarLista(),
      floatingActionButton: criarBotao(context),
      bottomNavigationBar: criarBarraNavegacao(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  Widget criarLista() {
    ContatoDAOInterface dao = ContatoDAO();
    return FutureBuilder(
      future: dao.buscarTodos(),
      builder: (BuildContext context,AsyncSnapshot<List<Contato>> lista){
        if(!lista.hasData) return CircularProgressIndicator();
        if(lista.data == null) return Container();
        List<Contato> listaContato = lista.data!;
        return ListView.builder(
          itemCount: listaContato.length,
          itemBuilder: (context,indice){
            var contato = listaContato[indice];
            return criarItemLista(contato);
          }
        );
      }
    );
  }


  Widget criarItemLista(Contato contato){
    ContatoDAOInterface dao = ContatoDAO();
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(contato.URLAvatar!),
        ),
        title: Text(contato.nome!),
        subtitle: Text(contato.telefone!),
        trailing: Wrap(
          children: [
            IconButton(
                onPressed: () {
                  dao.excluir(contato.id);
                },
                icon: Icon(Icons.delete)),
            IconButton(
              onPressed: () {
                dao.alterar(contato);
              },
              icon: Icon(Icons.edit),
            ),
          ],
        ));
  }
  BottomAppBar criarBarraNavegacao(){
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0),
    );
  }

  FloatingActionButton criarBotao(BuildContext context){
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context,Rota.contatoForm),
      tooltip: 'Adicionar novo contato',
      child: const Icon(Icons.add),
    );
  }
}