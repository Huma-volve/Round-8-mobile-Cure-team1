import 'package:cure_team_1/features/Home/presentation/widgets/booking_section.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/home_top_section.dart';
import 'package:flutter/material.dart';

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
                  Expanded(
                    child: Text("Specialties",
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
              const SizedBox(
                height: 6,
              ),
              SizedBox(
                height: 55,
                child: ListView.separated(
                    padding: const EdgeInsets.all(8),

                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      final spec = Specialty.specialties[index];

                      return Container(

                        padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.withOpacity(0.25),
                            width: 0.8,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                               Icon(spec.icon, size: 16),
                              const SizedBox(width: 4),
                              Text(spec.name),
                            ],
                      ),);},
                    separatorBuilder:  (context, index) => const SizedBox(width: 10),
                    itemCount: Specialty.specialties.length),
              ),
              SizedBox(
                height: 10,
              ),
              BookingSection()
            ],
          ),
        ),
      ),
    );
  }
}
