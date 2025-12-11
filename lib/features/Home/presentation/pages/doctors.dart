import 'package:flutter/material.dart';

import '../../Data/models/doctor_model.dart';


class DoctorsBySpecialtyScreen extends StatelessWidget {
  final String specialty;

  const DoctorsBySpecialtyScreen({super.key, required this.specialty});

  @override
  Widget build(BuildContext context) {
    final doctors = doctorsList
        .where((doc) => doc.specialty == specialty)
        .toList();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(specialty),
          backgroundColor: Colors.transparent
      ),
      body: doctors.isEmpty
          ? const Center(child: Text("No doctors available"))
          : ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];

          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(doctor.name),
            subtitle: Text("${doctor.specialty} | ${doctor.hospital}"),
          );
        },
      ),
    );
  }
}
