 import 'dart:io';

void main() {
  print("Informe o saldo total da conta: ");
  int saldoTotal = int.parse(stdin.readLineSync()!);

  print("Informe o valor do saque: ");
  int valorSaque = int.parse(stdin.readLineSync()!);

  if (saldoTotal >= valorSaque) {
    saldoTotal -= valorSaque;
    print("Saque realizado com sucesso! Novo saldo: $saldoTotal");
  } else {
    print("Saldo insuficiente. Saque nao realizado!");
  }
}