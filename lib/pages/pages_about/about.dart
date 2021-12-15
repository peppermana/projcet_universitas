import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/id/2/2c/Logo_Untag_Cirebon.jpg",
                  ),
                ),
              ),

              SizedBox(
                height: 20
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  "Universitas 17 Agustus 1945 (UNTAG) Cirebon didirikan pada tanggal 2 September 1962, sebagai Cabang UNTAG Jakarta. Berdirinya UNTAG Cirebon tidak terlepas dari perjuangan tokoh-tokoh yang semula mendirikan Akademi Pimpinan Perusahaan (APP) Cirebon pada tahun 1961 yang dipimpin oleh D. Usman Imam sebagai Direktur APP Cirebon merupakan cabang dari APP Bandung. Akhirnya APP Cirebon tidak dapat melanjutkan eksistensinya. "
                  "Mahasiswa yang jumlahnya 104 orang mengirim wakilnya ke Jakarta untuk bertemu dengan Prof. Dr. Prajudi Atmosudirdjo yang saat itu menjadi Rektor Magnificus. Atas saran dia diizinkan untuk membentuk UNTAG Cabang Cirebon, yang dilengkapi dengan susunan Pimpinan Yayasan dan Universitas.Atas usaha Bapak Tikok Moch. Ichlas, mantan Bupati Indramayu, berdirilah Yayasan Sunan Kalijaga sebagai Pengelola UNTAG Cirebon dan sebagai Sekretarisnya Bapak Waluyo yang pada saat itu menjabat sebagai Sekretaris Daerah Kota Praja Cirebon. Direktur Fakultas Ketatanegaraan dan Ketataniagaan adalah Bapak Drs. R. Machfudz, Wedana Palimanan. Pada tahun 1965 telah diadakan Ujian Negara dan menghasilkan 13 orang sarjana lengkap jurusan Administrasi Niaga. Pada perkembangan selanjutnya, maka pada tanggal 1 Januari 1965,"
                  " berdiri Universitas 17 Agustus 1945 (UNTAG) Cabang Cirebon dengan rektor dr. H. Abdul Manaf dan Pembantu Rektornya adalah Sunardi, SH., Kusrini, SH., Drs. Sudharman.Direktur Fakultas Ketatanegaraan dan Ketataniagaan adalah Bapak Drs. R. Machfudz, Wedana Palimanan. Pada tahun 1965 telah diadakan Ujian Negara dan menghasilkan 13 orang sarjana lengkap jurusan Administrasi Niaga. Pada perkembangan selanjutnya, maka pada tanggal 1 Januari 1965, berdiri Universitas 17 Agustus 1945 (UNTAG) Cabang Cirebon dengan rektor dr. H. Abdul Manaf dan Pembantu Rektornya adalah Sunardi, S.H., Kusrini, S.H., Drs. Sudharman.",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Whatsapp : 08232323215656"),
                    SizedBox(height: 15),
                    Text("instagram : example@gmail.com"),
                    SizedBox(
                      height: 15,
                    ),
                    Text("email : jicanguk"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
