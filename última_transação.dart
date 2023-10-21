import 'dart:io';

class Transacao {
  String data;
  String hora;
  String descricao;
  double valor;

  Transacao(this.data, this.hora, this.descricao, this.valor);

  void imprimir() {
    print(descricao);
    print(data);
    print(hora);
    print(valor.toStringAsFixed(2));
  }
}

void main() {
  // Sample input string
  String entrada = stdin.readLineSync()!;
  List<String> partes = entrada.split(',');

  if (partes.length == 4) {
    String data = partes[0];
    String hora = partes[1];
    String descricao = partes[2];
    double valor = double.tryParse(partes[3]) ?? 0.0;

    Transacao transacao = Transacao(data, hora, descricao, valor);
    transacao.imprimir();
  } else {
    print('Entrada inválida. Certifique-se de que a entrada está no formato correto.');
  }
}