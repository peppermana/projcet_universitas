/// values : [{"id":"1","nama_jurusan":"Elektro","foto_program_studi":"1638261558.png"},{"id":"5","nama_jurusan":"Management","foto_program_studi":"1638262239.png"},{"id":"6","nama_jurusan":"Mesin","foto_program_studi":"1638262400.png"},{"id":"11","nama_jurusan":"Perikanan dan Kelautan","foto_program_studi":"1638262671.png"},{"id":"12","nama_jurusan":"Hukum","foto_program_studi":"1638262947.png"}]
/// status_code : 200
/// message : "Show data succes"

class ListProgramStudiResponse {
  ListProgramStudiResponse({
      List<Values>? values, 
      int? statusCode, 
      String? message,}){
    _values = values;
    _statusCode = statusCode;
    _message = message;
}

  ListProgramStudiResponse.fromJson(dynamic json) {
    if (json['values'] != null) {
      _values = [];
      json['values'].forEach((v) {
        _values?.add(Values.fromJson(v));
      });
    }
    _statusCode = json['status_code'];
    _message = json['message'];
  }
  List<Values>? _values;
  int? _statusCode;
  String? _message;

  List<Values>? get values => _values;
  int? get statusCode => _statusCode;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_values != null) {
      map['values'] = _values?.map((v) => v.toJson()).toList();
    }
    map['status_code'] = _statusCode;
    map['message'] = _message;
    return map;
  }

}

/// id : "1"
/// nama_jurusan : "Elektro"
/// foto_program_studi : "1638261558.png"

class Values {
  Values({
      String? id, 
      String? namaJurusan, 
      String? fotoProgramStudi,}){
    _id = id;
    _namaJurusan = namaJurusan;
    _fotoProgramStudi = fotoProgramStudi;
}

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _namaJurusan = json['nama_jurusan'];
    _fotoProgramStudi = json['foto_program_studi'];
  }
  String? _id;
  String? _namaJurusan;
  String? _fotoProgramStudi;

  String? get id => _id;
  String? get namaJurusan => _namaJurusan;
  String? get fotoProgramStudi => _fotoProgramStudi;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nama_jurusan'] = _namaJurusan;
    map['foto_program_studi'] = _fotoProgramStudi;
    return map;
  }

}