import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

 final String base_url = 'http://192.168.1.6:8000/api/admin/';
 late String endpoint;

 Future<int> login(String email, String password) async {
   endpoint = 'login';
   var url = Uri.parse(base_url + endpoint);
   var response = await http.post(url, body: {
     'email': email,
     'password': password,
   });
   return response.statusCode;
 }

 Future<List<Map<String, dynamic>>> getAllPeminjaman() async {
  endpoint = 'peminjaman';
  var url = Uri.parse(base_url + endpoint);
  var response = await http.get(url);
  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.cast<Map<String, dynamic>>();
  } else {
    throw Exception('Failed to load data');
  }
}

Future<int> verifikasiPeminjaman (String id, String status) async {
  endpoint = 'verifikasi_peminjaman';
  var url = Uri.parse(base_url + endpoint);
  var response = await http.post(url, body: {
    'id': id,
    'status': status,
  });
  print(response.body);
  return response.statusCode;
}