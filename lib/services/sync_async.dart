import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List> getOngs() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    return jsonDecode(utf8.decode(response.bodyBytes));
  } else {
    throw Exception('Erro ao carregar dados do servidor');
  }
}
