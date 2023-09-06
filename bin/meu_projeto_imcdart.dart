import 'dart:io';

void main(List<String> arguments) {
  print('Olá!, essa é uma calculadora de IMC');

  stdout.write('Digite seu peso em KG, por exemplo : ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura em metros, por exemplo: \n 1.60');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 16) {
    print('Magreza GRAVE, cuidado!');
  } else if (imc == 16 || imc < 17) {
    print('Magreza MODERADA');
  } else if (imc == 18.5 || imc < 25) {
    print('Magreza LEVE');
  } else if (imc > 18.5 || imc < 25) {
    print('Saudável!, continue assim');
  } else if (imc == 25 || imc < 30) {
    print('Você está com SOBREPESO.');
  } else if (imc == 30 || imc < 35) {
    print('OBESIDADE GRAU I');
  } else if (imc == 35 || imc < 40) {
    print('OBEISDADE GRAU II (Severa)');
  } else if (imc >= 40) {
    print('OBESIDADE GRAU III (Mórbida)');
  }
}
