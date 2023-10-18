import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome,this.peso, this.altura);
}

double calcularIMC(
  double peso, double altura) {
    if (altura <= 0 || peso <= 0) {
      throw Exception("Altura e peso devem ser maiores que zero.");
    }
    return peso / (altura * altura);
  }

String interpretarIMC(double imc) {
  if (imc < 16) {
    return "Magreza grave";
  } else if (imc < 17 ) {
    return "Magreza moderada";
  } else if (imc < 18.5) {
    return "Magreza leve"; 
  } else if (imc < 25) {
    return "Saudavel";
  } else if (imc < 30) {
    return "Sobrepeso";
  } else if (imc < 35) {
    return "Obesidade Grau I";
  } else if (imc < 40) {
    return "obesidade Grau II (severa)";
  } else {
    return "Obesidade Grau III (mórbida)";
  }
}

void main() {
  try {
    print("Digite seu nome");
    var nome = stdin.readLineSync()!;
    print("Digite seu peso (em kg); ");
    var peso = double.parse(stdin.readLineSync()!);
    print("Digite sua altura (em metros); ");
    var altura = double.parse(stdin.readLineSync()!);
    var pessoa = Pessoa(nome, peso, altura);
    var imc = calcularIMC(pessoa.peso, pessoa.altura);
    var resultado = interpretarIMC(imc);

    print("${pessoa.nome}, seu IMC é: $imc");
    print("Classificação: $resultado");
  } catch (e) {print("Erro: $e");
  }
}