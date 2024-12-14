import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/pasien/pasien_detail_list_tambah.dart';
import '../../model/pasien.dart';
import 'pasien_detail.dart';
import 'pasien_item.dart';
import 'pasien_form.dart';
import '../../widget/sidebar.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Pasien"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context,
                  //ini yang bisa redirec ke halaman tambah poli
                  MaterialPageRoute(
                      builder: (context) => PasienDetailListTambah()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(pasien: Pasien(namaPasien: "PS-nana")),
          PasienItem(pasien: Pasien(namaPasien: "PS-sinta")),
          PasienItem(pasien: Pasien(namaPasien: "PS-angi")),
        ],
      ),
    );
  }
}
