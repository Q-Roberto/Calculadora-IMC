import 'dart:io';

void main() {
 
  String tipoCofre = stdin.readLineSync()!.toLowerCase();

  if (tipoCofre == "digital") {
   
    String senha = stdin.readLineSync()!;
   
    String confirmacaoSenha = stdin.readLineSync()!;

    if (senha == confirmacaoSenha) {
      print("Tipo: Cofre Digital");
      print("Metodo de abertura: Senha");
      print("Cofre aberto!");
    } else {
      print("Tipo: Cofre Digital");
      print("Metodo de abertura: Senha");
      print("Senha incorreta!");
    }
  } else if (tipoCofre == "fisico") {
    print("Tipo: Cofre Fisico");
    print("Metodo de abertura: Chave");
  } else {
    print("Tipo de cofre inválido.");
  }
}