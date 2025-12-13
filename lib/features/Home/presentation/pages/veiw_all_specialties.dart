import 'package:cure_team_1/features/Home/Data/models/specialty_model.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/speciality_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ViewAllSpecialties extends StatelessWidget {
  const ViewAllSpecialties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
    title: const Text("All Specialties"),
    leading: InkWell(onTap:(){
      GoRouter.of(context).pop();
    },
    child: const Icon(Icons.arrow_back_ios)),
    ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30
        ),
        child: Center(
          child: Column(
            children: [
            Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ...Specialty.specialties.map((e)=>SpecialityWidget(specialty: e)).toList()
            ],
          )
            ],
          ),
        ),
      ),
    );
  }
}
