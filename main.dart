import 'dart:io';

void main() {
  print('\nBem vindo ao desafio Escribo\n');
  var menu = 1;

  while (menu != 2) {
    print("Digite um número que deseja somar");
    num valor = num.parse(stdin.readLineSync() ?? '');

    somaValores(valor);

    print("\nDigite 1 se deseja continuar ou 2 para encerrar a aplicação");
    menu = int.parse(stdin.readLineSync() ?? '');
    print(menu != 2 && menu != 1 ? "\nOpção inválida" : "");
  }
  print("Fim da aplicação");
}

void somaValores(num valor) {
  var soma = 0;

  for (var i = 1; i < valor; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }
  print(
      "\nSomatório de todos os valores inteiros divisíveis por 3 ou 5 que sejam inferiores a $valor é: $soma");
}
