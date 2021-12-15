import 'package:flutter/material.dart';
import 'package:project_universitas/api/api_program_studi.dart';

class DetailProgramStudi extends StatefulWidget {
  final String id;
  const DetailProgramStudi({Key? key, required this.id}) : super(key: key);

  @override
  _DetailProgramStudiState createState() => _DetailProgramStudiState();
}

class _DetailProgramStudiState extends State<DetailProgramStudi> {
  String descriptionUniv = "";
  String fotoProgramStudi = "";

  void getDetailProgramStudi(String id) {
    ApiProgramStudi.getDetailProgramStudi(id).then((value) {
      setState(() {
        descriptionUniv = value.descriptionUniv!;
        fotoProgramStudi = value.fotoProgramStudi!;
      });
    });
  }

  @override
  void initState() {
    getDetailProgramStudi(widget.id);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Detail Berita")
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              //gambar program studi
                child: Image.network(ApiProgramStudi.imageProgramStudi + fotoProgramStudi),
            ),
          ),

          //Text
          Container(
            child: Text(
              descriptionUniv,
            ),
          ),
        ],
      ),
    );
  }
}