main() {
  var a = 3; //pode ser alterado
  a = 5;

  final b = 3; //não pode ser alterado
  // a = 5;

  const c = 3; //não pode ser alterado

  dynamic x = 'Oi';
  x = 123;
  x = false; // será printado false

  Map<String, double> map = {
    // 'Chave' : 'valor';
    // 'key' : 'value';

    'Ana': 5.7,
    'Pedro': 5.3,
    'Maria': 9.8
  };

  var nomes = ['a', 'b', 'c'];

  nomes.add('Daniel');

  var conjunto = {0, 1, 2, 3, 4, 5, 5, 5};

  print(nomes);
  print('\n');

  print(conjunto);
  print('\n');

  for (var chave in map.keys) {
    print('chave = $chave');
  }
  print('\n');

  for (var valor in map.values) {
    print('valor = $valor');
  }
  print('\n');

//interpolado
  for (var registros in map.entries) {
    print('${registros.key} = ${registros.value}');
  }
  print('\n');
}
