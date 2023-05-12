
import 'package:flutter_application_1/view/dto/contato.dart';
import 'package:flutter_application_1/view/interface/contato_dao_interface.dart';

class ContatoDAO implements ContatoDAOInterface{
  var listaContatos = <Contato>[

    Contato.dados(
      id: 1,
      nome: 'Wesley Castilho',
      email: 'wesley@hotmail.com',
      telefone: '(44) 99169-8741',
      URLAvatar: 'https://cdn.pixabay.com/photo/2023/04/05/13/01/animal-7901464_1280.jpg'
    ),

    Contato.dados(
      id: 2,
      nome: 'Vini Ferrari',
      email: 'ferrari@hotmail.com',
      telefone: '(44) 99125-4758',
      URLAvatar: 'https://cdn.pixabay.com/photo/2023/05/03/09/16/rooster-7967053_1280.jpg'
    ),

    Contato.dados(
        id: 2,
        nome: 'Vitor',
        email: 'vitor@hotmail.com',
        telefone: '(44) 99128-8725',
        URLAvatar:
            'https://cdn.pixabay.com/photo/2023/01/18/16/45/dinosaur-7727356_1280.png'
    ),
  ];

  @override
  Future<Contato> alterar(Contato contato) {
    print(contato);
  return Future.value(contato);
  }

  @override
  Future<Contato> buscar(id) {
    // TODO: implement buscar
    return Future.value(listaContatos[id-1]);
  }

  @override
  Future<List<Contato>> buscarTodos() {
    // TODO: implement buscarTodos
    return Future.value(listaContatos);
  }

  @override
  Future<bool> excluir(id) {
    print(id);
    return Future.value(true);
  }

  @override
  Future<Contato> salvar(Contato contato) {
  print(contato);
return Future.value(contato); }
}