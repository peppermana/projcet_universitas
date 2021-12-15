import 'package:http/http.dart' as http;
import 'package:project_universitas/api/detail_news_response/detail_berita.dart';


import 'dart:convert';

import 'list_response/list_berita_response.dart';



const baseURL = "http://192.168.1.12/project_universitas/api/";
class Api {

  static String image = "http://192.168.1.12/project_universitas/images/";
  static String judulBerita = "http://192.168.1.12/project_universitas/Api/";

  static Future<ListBeritaResponse> getListBerita() async {
    var url = baseURL + "get_list_news.php";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return ListBeritaResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "failed to get list";
    }
  }

  static Future<DetailBerita> getDetailBerita(String id) async {
    var url = baseURL + "get_detail_news.php?id=" + id;

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return DetailBerita.fromJson(jsonDecode(response.body));
    } else {
      throw "failed to get list";
    }
  }
}
