import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/karyawan/karyawan_page.dart';
import 'karyawan_update_form.dart';
import '../../model/karyawan.dart';

class KaryawanDetail extends StatefulWidget {
  final Karyawan karyawan;

  const KaryawanDetail({super.key, required this.karyawan});

  @override
  State<KaryawanDetail> createState() => _KaryawanDetailState();
}

class _KaryawanDetailState extends State<KaryawanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Karyawan")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "ID : 001\n"
            "NIP : 1014\n"
            "Nama Karyawan : ${widget.karyawan.namaKaryawan}\n"
            "Tanggal Lahir : 12-12-1990\n"
            "Nomor Telepon : 0987261512827\n"
            "Email : karyawan@karyawan"
            "Password :  xxxxxxxxxxx\n",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          )
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    KaryawanUpdateForm(karyawan: widget.karyawan)),
          );
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin ingin menghapus data ini?"),
            actions: [
              // tombol ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => KaryawanPage()));
                },
                child: const Text("YA"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
              // tombol batal
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              )
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Hapus"));
  }
}
