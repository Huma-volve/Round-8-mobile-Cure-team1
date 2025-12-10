import 'package:cure_team_1/features/Home/Data/models/specialty_model.dart';
import 'package:flutter/material.dart';
import '../pages/doctors.dart';

class SpecialityWidget extends StatelessWidget {
  final Specialty specialty;

  const SpecialityWidget({
    super.key,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DoctorsBySpecialtyScreen(
              specialty: specialty.name
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(specialty.icon, size: 18, color: Colors.black87),
            const SizedBox(width: 6),
            Text(
              specialty.name,
              style: const TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
