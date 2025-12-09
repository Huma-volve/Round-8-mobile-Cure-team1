import 'package:cure_team_1/features/Home/presentation/widgets/booking_section.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/doctor_item.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/home_top_section.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/specialties_list.dart';
import 'package:flutter/material.dart';

import '../../Data/models/doctor_model.dart';
import '../../Data/models/specialty_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           const HomeTopSection(),
              const SizedBox(
                height: 23,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search for specialty, doctor..",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children:[
                  const Expanded(
                    child: Text("Specialties",
                      style: TextStyle(
                    fontSize: 20
                      ),),
                  ),
                TextButton(onPressed: (){}, child: const Text("View all",
                  style: TextStyle(
                    fontSize: 18,
                  color: Colors.blue
                ),)),
                ]
              ),
              const SizedBox(
                height: 6,
              ),
              const SpecialtiesList(),
              const SizedBox(
                height: 10,
              ),
              const BookingSection(),
              Row(
                  children:[
                    Expanded(
                      child: Text("Doctors near you",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                    ),
                    TextButton(onPressed: (){}, child: Text("Veiw all",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue
                      ),)),
                  ]
              ),
              Expanded(
                child:  ListView.separated(
                    scrollDirection: Axis.vertical,
                      padding: const EdgeInsets.all(8),

                      itemBuilder:(context,index){
                        final item = doctorsList[index];
                        return DoctorItem(doctor: item);
                      },
                    separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 8,
                    );
                    },
                    itemCount: doctorsList.length,
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
