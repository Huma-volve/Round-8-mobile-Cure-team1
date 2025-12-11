import 'package:cure_team_1/features/Home/Data/models/doctor_model.dart';
import 'package:flutter/material.dart';
class DoctorItem extends StatefulWidget {
  final DoctorModel doctor;
  const DoctorItem({super.key, required this.doctor});

  @override
  State<DoctorItem> createState() => _DoctorItemState();
}

class _DoctorItemState extends State<DoctorItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow:const [
          BoxShadow(
            blurRadius: 8,
            color: Colors.black12,
          )
        ],
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
         Expanded(
           child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Icon(Icons.person)
                ),
         ),

          SizedBox(width: 12,),

           Column(
             mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text(widget.doctor.name ),
                Text(overflow: TextOverflow.ellipsis,
                  "${widget.doctor.specialty ?? ''} | ${widget.doctor.hospital}",),
                Row(
                  children: [
                    const Icon(Icons.star,size: 17,color: Colors.orange,),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(widget.doctor.rating.toString()),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(Icons.watch_later_outlined , size: 17,),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(widget.doctor.date.toString()),
                  ],
                )

            ],),

          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Icon( isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,),
            ),
          ),

        ],
      ),
    );
  }
}
