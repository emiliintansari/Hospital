import 'package:flutter/material.dart';
//import 'package:flutter_application_2/ui/Pasien_detail.dart';
import '../../model/karyawan.dart';
import 'karyawan_detail.dart';

class KaryawanUpdateForm extends StatefulWidget {
  final Karyawan karyawan;

  const KaryawanUpdateForm({Key? key, required this.karyawan})
      : super(key: key);
  _KaryawanUpdateFormState createState() => _KaryawanUpdateFormState();
}

class _KaryawanUpdateFormState extends State<KaryawanUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _namaKaryawanCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _namaKaryawanCtrl.text = widget.karyawan.namaKaryawan ?? '';
      //ini dikasih ?? '' biar kalo null, tetep bisa diisi
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ubah karyawan")),
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
        Navigator.pop(context);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => KaryawanDetail(karyawan: karyawan)),
        );
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
