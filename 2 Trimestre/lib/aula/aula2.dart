
main()async{
    print('abre a página');
    await buscarDados();
    print('carrega os botões');
    print('carrega os campos');
    print('carrega imagens');

}

buscarDados()async {
  await Future.delayed(Duration(seconds: 5), ()=> print
  ('carrega os dados'));
}