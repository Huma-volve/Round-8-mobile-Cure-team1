import 'package:cure_team_1/core/utils/assets.dart';
import 'package:cure_team_1/features/Home/presentation/pages/search_page.dart';
import 'package:cure_team_1/features/Home/presentation/pages/veiw_all_specialties.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/booking_section.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/doctor_item.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/home_top_section.dart';
import 'package:cure_team_1/features/Home/presentation/widgets/specialties_list.dart';
import 'package:cure_team_1/features/chat/persention/screens/chat.dart';
import 'package:cure_team_1/features/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Data/models/doctor_model.dart';

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
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                decoration: InputDecoration(
                    hintText: "Search for specialty, doctor..",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(children: [
                const Expanded(
                  child: Text(
                    "Specialties",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewAllSpecialties()));
                    },
                    child: const Text(
                      "View all",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    )),
              ]),
              const SizedBox(
                height: 6,
              ),
              const SpecialtiesList(),
              const SizedBox(
                height: 10,
              ),
              const BookingSection(),
              Row(children: [
                Expanded(
                  child: Text(
                    "Doctors near you",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Veiw all",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    )),
              ]),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Profile selected
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF196EEE),

        unselectedItemColor: Colors.redAccent,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BookingSection(),
              ),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Chat(),
              ),
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Booking',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              Assets.profileProfile, // Use correct profile asset
              colorFilter: ColorFilter.mode(
                Color(0xFF196EEE),
                BlendMode.srcIn,
              ),
            ),
            activeIcon: SvgPicture.asset(
              Assets.profileProfile,
              colorFilter: const ColorFilter.mode(
                Color(0xFF196EEE),
                BlendMode.srcIn,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
