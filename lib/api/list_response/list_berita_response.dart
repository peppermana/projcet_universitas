/// values : [{"id":"7","judul_berita":"UNTAG CIREBON Jalin Kerjasama dengan Perusahaan","foto_news":"1637831644.png","post_on":"2021-11-25 16:14:04"},{"id":"11","judul_berita":"Untag Cirebon Hadiri Rapat Koordinasi LLDIKTI","foto_news":"1637913982.png","post_on":"2021-11-26 15:06:22"},{"id":"12","judul_berita":"Penerimaan Mahasiswa Baru","foto_news":"1637914819.png","post_on":"2021-11-26 15:20:19"},{"id":"14","judul_berita":"aku","foto_news":"1638241527.png","post_on":"2021-11-30 10:05:05"}]
/// status_code : 200
/// message : "Show data succes"

class ListBeritaResponse {
  ListBeritaResponse({
      List<Values>? values, 
      int? statusCode, 
      String? message,}){
    _values = values;
    _statusCode = statusCode;
    _message = message;
}

  ListBeritaResponse.fromJson(dynamic json) {
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

/// id : "7"
/// judul_berita : "UNTAG CIREBON Jalin Kerjasama dengan Perusahaan"
/// foto_news : "1637831644.png"
/// post_on : "2021-11-25 16:14:04"

class Values {
  Values({
      String? id, 
      String? judulBerita, 
      String? fotoNews, 
      String? postOn,}){
    _id = id;
    _judulBerita = judulBerita;
    _fotoNews = fotoNews;
    _postOn = postOn;
}

  Values.fromJson(dynamic json) {
    _id = json['id'];
    _judulBerita = json['judul_berita'];
    _fotoNews = json['foto_news'];
    _postOn = json['post_on'];
  }
  String? _id;
  String? _judulBerita;
  String? _fotoNews;
  String? _postOn;

  String? get id => _id;
  String? get judulBerita => _judulBerita;
  String? get fotoNews => _fotoNews;
  String? get postOn => _postOn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['judul_berita'] = _judulBerita;
    map['foto_news'] = _fotoNews;
    map['post_on'] = _postOn;
    return map;
  }

}