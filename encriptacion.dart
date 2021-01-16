import 'dart:io';

main(List<String> args) {
  if (args[0] == 'e') {
    String cadenaEncriptada = "";
    new File(args[1]).readAsString().then((String contents) {
      List<String> letras = contents.split('');
      List<String> abc1 = [
        ' ',
        'a',
        'b',
        'c',
        'd',
        'e',
        'f',
        'g',
        'h',
        'i',
        'j',
        'k',
        'l',
        'm',
        'n',
        'o',
        'p',
        'q',
        'r',
        's',
        't',
        'u',
        'v',
        'w',
        'x',
        'y',
        'z'
      ];
      List<String> abc2 = [
        ' ',
        'r',
        'i',
        'z',
        'q',
        'h',
        'y',
        'p',
        'g',
        'x',
        'o',
        'f',
        'w',
        'n',
        'e',
        'v',
        'm',
        'd',
        'u',
        'l',
        'c',
        't',
        'k',
        'b',
        's',
        'j',
        'a'
      ];

      letras.forEach((letra) {
        int pos = abc1.indexOf(letra);
        String letraEn = abc2[pos];
        cadenaEncriptada += letraEn;
      });
      new File(args[2]).writeAsString(cadenaEncriptada).then((File file) {
        print('archivo encriptado');
      });
    });
  } else if (args[0] == 'd') {
    String cadenaDescencriptada = "";
    new File(args[1]).readAsString().then((String contents) {
      List<String> letras = contents.split('');
      List<String> abc1 = [
        ' ',
        'a',
        'b',
        'c',
        'd',
        'e',
        'f',
        'g',
        'h',
        'i',
        'j',
        'k',
        'l',
        'm',
        'n',
        'o',
        'p',
        'q',
        'r',
        's',
        't',
        'u',
        'v',
        'w',
        'x',
        'y',
        'z'
      ];
      List<String> abc2 = [
        ' ',
        'r',
        'i',
        'z',
        'q',
        'h',
        'y',
        'p',
        'g',
        'x',
        'o',
        'f',
        'w',
        'n',
        'e',
        'v',
        'm',
        'd',
        'u',
        'l',
        'c',
        't',
        'k',
        'b',
        's',
        'j',
        'a'
      ];

      letras.forEach((letra) {
        int pos = abc2.indexOf(letra);
        String letraDes = abc1[pos];
        cadenaDescencriptada += letraDes;
      });
      new File(args[2]).writeAsString(cadenaDescencriptada).then((File file) {
        print('archivo descencriptado');
      });
    });
  }
}
