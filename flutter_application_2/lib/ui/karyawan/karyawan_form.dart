import 'package:flutter/material.dart';
import 'package:flutter_application_2/model/karyawan.dart';
import 'package:flutter_application_2/ui/karyawan/karyawan_detail.dart';
import 'package:flutter_application_2/ui/karyawan/karyawan_detail.dart';

class KaryawanForm extends StatefulWidget {
  const KaryawanForm({Key? key}) : super(key: key);
  _KaryawanFormState createState() => _KaryawanFormState();
}

class _KaryawanFormState extends State<KaryawanForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaKaryawanCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Karyawan")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldNamaKaryawan(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }

  _fieldNamaKaryawan() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama karyawan"),
      controller: _namaKaryawanCtrl,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        Karyawan karyawan = Karyawan(namaKaryawan: _namaKaryawanCtrl.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => KaryawanDetail(karyawan: karyawan)),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
