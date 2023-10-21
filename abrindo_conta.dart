import 'dart:io';

class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  void exibirInformacoes() {

    print("Conta: $numeroConta");
    print("Titular: $nomeTitular");
    print("Saldo: R\$ ${saldo.toStringAsFixed(1)}");
  }

  int getNumeroConta() {
    return numeroConta;
  }

  String getNomeTitular() {
    return nomeTitular;
  }

  double getSaldo() {
    return saldo;
  }
}

void main() {
  int numeroConta = int.parse(stdin.readLineSync()!);
  String nomeTitular = stdin.readLineSync()!;
  double saldo = double.parse(stdin.readLineSync()!);

  Bancaria contaBancaria = Bancaria(numeroConta, nomeTitular, saldo);

  print("Informacoes:");
  
  contaBancaria.exibirInformacoes();
}