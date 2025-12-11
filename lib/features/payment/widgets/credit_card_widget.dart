import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String cardNumber; // e.g. "6789 4567 5432 8903"
  final String cardHolder;
  final String expiryDate; // e.g. "12/22"
  final Color startColor;
  final Color endColor;

  const CreditCardWidget({
    super.key,
    required this.cardNumber,
    required this.cardHolder,
    required this.expiryDate,
    this.startColor = const Color(0xFF00C9FF), // Cyan-ish
    this.endColor = const Color(0xFF92FE9D), // Green-ish
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF00C6FF),
            Color(0xFF0072FF),
          ], // Blue gradient matching design more closely
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.credit_card,
                color: Colors.white,
              ), // Placeholder for "Spenny" logo
              const Text(
                'VISA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Chip icon placeholder
          Container(
            width: 40,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            cardNumber,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardHolder.toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                expiryDate,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
