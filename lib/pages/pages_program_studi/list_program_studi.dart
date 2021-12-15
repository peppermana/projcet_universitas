import 'package:flutter/material.dart';
import 'package:project_universitas/api/api_program_studi.dart';
import 'package:project_universitas/api/list_response/list_program_studi_response.dart';
import 'package:project_universitas/pages/pages_program_studi/detail_program_studi.dart';

class ListProgramStudi extends StatefulWidget {
  const ListProgramStudi({Key? key}) : super(key: key);

  @override
  _ListProgramStudiState createState() => _ListProgramStudiState();
}

class _ListProgramStudiState extends State<ListProgramStudi> {
  List<Values> data = [];

  void getListProgramStudi() {
    ApiProgramStudi.getListProgramStudi().then((value) {
      setState(() {
        data = value.values!;
      });
    });
  }

  @override
  void initState() {
    getListProgramStudi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Jurusan"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => DetailProgramStudi(
                             id: data[index].id!,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 10),
                          ]),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.network(
                              ApiProgramStudi.imageProgramStudi +
                                  data[index].fotoProgramStudi!,
                              width: 90,
                              height: 90,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data[index].namaJurusan!,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
