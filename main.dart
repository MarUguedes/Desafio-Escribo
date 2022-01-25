import 'dart:io';

void main() {
  print("Digite um valor");
  num valor = num.parse(stdin.readLineSync() ?? "0");

  somaValores(valor);
}

void somaValores(num valor) {
  var soma = 0;

  for (var i = 1; i < valor; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      soma += i;
    }
  }
  print("A soma de todos os valores inteiros divisiveis por 3 ou 5 e menor que $valor é: $soma");
}
