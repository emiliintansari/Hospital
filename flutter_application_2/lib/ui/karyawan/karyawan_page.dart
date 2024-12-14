import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/karyawan/karyawan_detail_list_tambah.dart';
import '../../model/karyawan.dart';
import 'karyawan_detail.dart';
import 'karyawan_item.dart';
import 'karyawan_form.dart';
import '../../widget/sidebar.dart';

class KaryawanPage extends StatefulWidget {
  const KaryawanPage({super.key});

  @override
  State<KaryawanPage> createState() => _KaryawanPageState();
}

class _KaryawanPageState extends State<KaryawanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: const Text("Data Karyawan"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                  context,
                  //ini yang bisa redirec ke halaman tambah poli
                  MaterialPageRoute(
                      builder: (context) => KaryawanDetailListTambah()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          KaryawanItem(karyawan: Karyawan(namaKaryawan: "Karyawan 1-anita")),
          KaryawanItem(karyawan: Karyawan(namaKaryawan: "Karyawan 2-bobi")),
          KaryawanItem(karyawan: Karyawan(namaKaryawan: "karyawan 3-cindy")),
        ],
      ),
    );
  }
}
