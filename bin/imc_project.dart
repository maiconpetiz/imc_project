import 'dart:convert' show utf8;
import 'dart:io';

class Pessoa {
  String nome = "";
  String peso = "";
  String altura = "";
  String imc = "";
  String classificacao = "";
}


void main(List<String> arguments) {
  print("Calcule aqui seu IMC!");

  stdout.write("Informe seu nome: ");
  var nome = stdin.readLineSync(encoding: utf8);

  stdout.write("Informe seu peso (kg): ");
  var peso = double.parse(stdin.readLineSync(encoding: utf8)!);

  stdout.write("Informe aqui sua altura: ");
  var altura = double.parse(stdin.readLineSync(encoding: utf8)!);
  
  var imc = calcularIMC(peso, altura);

  print("Nome: $nome");
  print("O Seu IMC é: $imc");
  print("Sua classificação: ${classificarIMC(imc)}");
  print(Pessoa);

  Pessoa pessoa = Pessoa();
  pessoa.nome = nome.toString();
  pessoa.peso = peso.toString();
  pessoa.altura = altura.toString();
  pessoa.imc = imc.toString();
  pessoa.classificacao = classificarIMC(imc).toString();
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificarIMC(imc) {
    if (imc < 16) {
      return "Magreza Grave";
    }
    else if (imc < 17) {
      return "Magreza Moderada";
    }
    else if (imc < 18.5) { 
      return "Magreza Leve";
    }
    else if (imc < 25) {
      return "Saudável";
    }
    else if (imc < 30) {
      return "Sobrepeso";
    }
    else if (imc < 35) {
      return "Obesidade Grau I";
    }
    else if (imc < 40) {
      return "Obesidade Grau II (severa)";
    }
    else {
      return "Obesidade Grau III (mórbida)";
    }
}






