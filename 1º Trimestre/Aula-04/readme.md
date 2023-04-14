# Aula do dia 03/03

## Conteúdo

- Function Parameter
- Anonymous Function
- Arrow Function
- Parâmetro Posicionais, Opcionais e Nomeados

## Function Parameter

Um parâmetro de função é uma variável definida dentro dos parênteses de uma definição de função e serve como um espaço reservado para um valor que é passado para a função quando ela é chamada.

```
void minhaFuncao(int parametro1, String parametro2) {
  // corpo da função
}
```

## Anonymous Funcion

Uma função anônima é uma função que não tem um nome associado a ela. Em vez disso, ela é definida no momento em que é necessária e geralmente é usada como uma expressão em outras funções ou métodos. 
```
void main() {
  var numeros = [1, 2, 3, 4, 5];

  // definindo uma função anônima usando uma função lambda
  numeros.forEach((numero) {
    print(numero);
  });

  // definindo uma função anônima usando uma função anônima de bloco
  numeros.forEach((numero) {
    print(numero);
  });
}
```

## Arrow Function

Em Dart, uma arrow function (ou função de seta) é uma sintaxe simplificada para definir funções anônimas de uma única expressão. É uma maneira mais curta e concisa de definir funções, especialmente quando você precisa passá-las como argumentos para outras funções.

```
void main() {
  // definindo uma arrow function simples
  var soma = (int a, int b) => a + b;

  // chamando a arrow function e imprimindo o resultado
  print(soma(2, 3)); // imprime: 5
}
```

## Parâmetros Posicionais

Os parâmetros posicionais são aqueles que são definidos na lista de parâmetros de uma função sem especificar um nome para eles. Quando você chama uma função que tem parâmetros posicionais, você deve passar os argumentos na mesma ordem em que os parâmetros foram definidos na lista de parâmetros da função.

```void main() {
  // definindo uma função com dois parâmetros posicionais
  void imprimirNomeCompleto(String primeiroNome, String sobrenome) {
    print('$primeiroNome $sobrenome');
  }

  // chamando a função e passando os argumentos na ordem correta
  imprimirNomeCompleto('Vitor', 'Felipe');
}
```
