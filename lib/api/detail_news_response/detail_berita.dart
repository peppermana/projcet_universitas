/// id : "7"
/// judul_berita : "UNTAG CIREBON Jalin Kerjasama dengan Perusahaan"
/// foto_news : "1637831644.png"
/// konten : "UNTAG CIREBON. Dalam rangka meningkatkan kualitas Mahasiswa dan Alumninya, Universitas 17 Agustus 1945 Cirebon melalui Fakultas Teknik melakukan penandatanganan Kerjasama dengan PT. Chang Jui Fang Indonesia (CJFI) di Aula Ki Hajar Dewantoro Kampus Un"
/// post_on : "2021-11-25 16:14:04"
/// status_code : 200
/// message : "Show data success"

class DetailBerita {
  DetailBerita({
      String? id, 
      String? judulBerita, 
      String? fotoNews, 
      String? konten, 
      String? postOn, 
      int? statusCode, 
      String? message,}){
    _id = id;
    _judulBerita = judulBerita;
    _fotoNews = fotoNews;
    _konten = konten;
    _postOn = postOn;
    _statusCode = statusCode;
    _message = message;
}

  DetailBerita.fromJson(dynamic json) {
    _id = json['id'];
    _judulBerita = json['judul_berita'];
    _fotoNews = json['foto_news'];
    _konten = json['konten'];
    _postOn = json['post_on'];
    _statusCode = json['status_code'];
    _message = json['message'];
  }
  String? _id;
  String? _judulBerita;
  String? _fotoNews;
  String? _konten;
  String? _postOn;
  int? _statusCode;
  String? _message;

  String? get id => _id;
  String? get judulBerita => _judulBerita;
  String? get fotoNews => _fotoNews;
  String? get konten => _konten;
  String? get postOn => _postOn;
  int? get statusCode => _statusCode;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['judul_berita'] = _judulBerita;
    map['foto_news'] = _fotoNews;
    map['konten'] = _konten;
    map['post_on'] = _postOn;
    map['status_code'] = _statusCode;
    map['message'] = _message;
    return map;
  }

}