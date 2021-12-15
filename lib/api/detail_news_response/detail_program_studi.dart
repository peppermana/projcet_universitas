/// id : "1"
/// description_univ : "Teknik Elektro merupakan bidang ilmu yang mempelajari listrik dan aplikasinya dalam kehidupan sehari-hari. Quipperian akan dibekali dengan ilmu dan pengetahuan seputar konsep, perancangan, pengembangan, serta produksi perangkat listrik dan elektronik. Kamu juga akan banyak membahas metode pembangkit dengan sumber energi baru, metode penyimpanan energi, dan metode kontrol penghematan energi.\r\n\r\nPengetahuan dan Keahlian\r\n1.Kemampuan mendesain sistem\r\n\r\n 2.Kemampuan eksperimen\r\n\r\n 3.Kemampuan melakukan analisis\r\n\r\n 4.Kemampuan memecahkan masalah bidang rekayasa teknik\r\n\r\n5.Pemahaman matematika\r\n\r\n6.Pemahaman fisika"
/// foto_program_studi : "1638261558.png"
/// status_code : 200
/// message : "Show data succes"

class DetailProgramStudi {
  DetailProgramStudi({
      String? id, 
      String? descriptionUniv, 
      String? fotoProgramStudi, 
      int? statusCode, 
      String? message,}){
    _id = id;
    _descriptionUniv = descriptionUniv;
    _fotoProgramStudi = fotoProgramStudi;
    _statusCode = statusCode;
    _message = message;
}

  DetailProgramStudi.fromJson(dynamic json) {
    _id = json['id'];
    _descriptionUniv = json['description_univ'];
    _fotoProgramStudi = json['foto_program_studi'];
    _statusCode = json['status_code'];
    _message = json['message'];
  }
  String? _id;
  String? _descriptionUniv;
  String? _fotoProgramStudi;
  int? _statusCode;
  String? _message;

  String? get id => _id;
  String? get descriptionUniv => _descriptionUniv;
  String? get fotoProgramStudi => _fotoProgramStudi;
  int? get statusCode => _statusCode;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['description_univ'] = _descriptionUniv;
    map['foto_program_studi'] = _fotoProgramStudi;
    map['status_code'] = _statusCode;
    map['message'] = _message;
    return map;
  }

}