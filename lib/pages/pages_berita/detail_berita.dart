import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_universitas/api/api.dart';

class DetailBerita extends StatefulWidget {
  final String id;

  const DetailBerita({Key? key, required this.id}) : super(key: key);

  @override
  _DetailBeritaState createState() => _DetailBeritaState();
}

class _DetailBeritaState extends State<DetailBerita> {
  String judulBerita = "";
  String fotoNews = "";
  String konten = "";
  String postOn = "";

  void getDetailBerita(String id) {
    Api.getDetailBerita(id).then((value) {
      setState(() {
        judulBerita = value.judulBerita!;
        fotoNews = value.fotoNews!;
        konten = value.konten!;
        postOn = value.postOn!;
      });
    }).catchError((error) {
      print(error);
    });
  }

  @override
  void initState() {
    getDetailBerita(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Detail Berita',
      ),),
      body: Column(
        children: [
          //judul
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              judulBerita,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),

          //post on
          Row(
            children: [
              Container(
                child:  Text(
                  postOn, style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                ),
              ),
            ],
          ),

          //gambar
          Container(
            child: Expanded(
              child: Image.network(
                Api.image + fotoNews,
              ),
            ),
          ),

          //konten
          Container(
            child: Text(
              konten, style: TextStyle(
              fontSize: 16
            ),
            ),
          ),
        ],
      ),
    );
  }
}
