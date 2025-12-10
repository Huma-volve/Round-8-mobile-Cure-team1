import 'package:flutter/material.dart';
import '../pages/favorite_page.dart';
class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 18,
          child: Icon(Icons.person),
        ),
        const SizedBox(width: 12),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome back, Rahma", style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                children: [
                  const Icon(Icons.location_on_outlined, size: 16),
                  TextButton(onPressed: (){

                  }, child: const Text("129, El-Nasr Street, Cairo")),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(color: Colors.black26, offset: Offset(0, 6), blurRadius: 6),
            ],
          ),
              child: InkWell(onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritePage()));
              },
                  child: const Icon(Icons.favorite_border,))),

        const SizedBox(
          width: 4,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: const [
              BoxShadow(color: Colors.black26, offset: Offset(0, 6), blurRadius: 6),
            ],
          ),
          child: InkWell(onTap: (){},
              child: const Icon(Icons.notifications_none_outlined,)),
        ),
      ],
    );
  }
}

