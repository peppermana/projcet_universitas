 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_universitas/pages/pages_berita/list_berita.dart';
import 'package:project_universitas/pages/pages_program_studi/list_program_studi.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Universitas 17 Agustus 1945")
      ),
      body: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical:20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                        "http://untagcirebon.ac.id/web/wp-content/uploads/2019/02/untag-landing.jpg"),
                  ),
                ),
                Text(
                  "Selamat Datang di Universitas 17 Agustus 1945",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  height: 35,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueGrey[100],
                  ),

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Menu Pilihan",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //halaman program studi
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                              iconSize: 40,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListProgramStudi()));
                              },
                              icon: Icon(Icons.menu_book, color: Colors.white)),
                          Text(
                            "Program Studi",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),


                    //halaman berita kampus
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            iconSize: 40,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListBerita()));
                              },
                              icon: Icon(Icons.feed_outlined, color: Colors.white)),
                          Text(
                            "Berita Kampus",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
