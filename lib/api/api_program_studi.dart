import 'dart:convert';
import 'package:http/http.dart' as http;
import 'detail_news_response/detail_program_studi.dart';
import 'list_response/list_program_studi_response.dart';

const baseURL = "http://192.168.1.12/project_universitas/api2/";

class ApiProgramStudi {
  static String imageProgramStudi = "http://192.168.1.12/project_universitas/images2/";

  static Future<ListProgramStudiResponse> getListProgramStudi() async {
    var url = baseURL + "get_list_studi.php";

    print(url);

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return ListProgramStudiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw "cant get list";
    }
  }

  static Future<DetailProgramStudi> getDetailProgramStudi(String id) async {
    var url = baseURL + "get_detail_studi.php?id=" + id;

    print(url);

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return DetailProgramStudi.fromJson(jsonDecode(response.body));
    } else {
      throw "cant get list";
    }
  }
}
