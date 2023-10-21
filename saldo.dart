import 'dart:io';

void main() {
  print("Informe o saldo atual: ");
  double saldoAtual = double.parse(stdin.readLineSync()!);

  print("Informe o valor do depósito: ");
  double valorDeposito = double.parse(stdin.readLineSync()!);

  print("Informe o valor da retirada: ");
  double valorRetirada = double.parse(stdin.readLineSync()!);

  // Atualiza o saldo com base nas transações
  double saldoAtualizado = saldoAtual + valorDeposito - valorRetirada;

  print("Saldo atualizado na conta: ${saldoAtualizado.toStringAsFixed(1)}");
}