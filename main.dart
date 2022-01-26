import 'dart:io';

void main() {
  print("Digite um valor");
  num valor = num.parse(stdin.readLineSync() ?? "");
  num resultado = 0;

  if (valor <= 0) {
    print("\nDigite um valor maior que 0");
  } else {
    resultado = somaValores(valor);
    print("\nResultado : $resultado");
  }
}

num somaValores(num valor) {
  var soma = 0;
  for (var contador = 1; contador < valor; contador++) {
    if (contador % 3 == 0 || contador % 5 == 0) {
      soma += contador;
    }
  }
  return soma;
}
