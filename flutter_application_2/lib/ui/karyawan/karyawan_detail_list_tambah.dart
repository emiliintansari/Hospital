import 'package:flutter/material.dart';

class KaryawanDetailListTambah extends StatelessWidget {
  final List<String> items = List<String>.generate(20, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Karayawan")),
      body: SingleChildScrollView(
        child: Form(
          //key: _formKey,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "ID"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "NIP"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Nama karyawan"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Tanggal Lahir"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "no. Telp"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextField(
                decoration: const InputDecoration(labelText: "Password"),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan")),
            ],
          ),
        ),
      ),
    );
  }
}
