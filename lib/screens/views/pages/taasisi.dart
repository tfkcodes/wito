import 'package:flutter/material.dart';

class TaasisiScreen extends StatefulWidget {
  const TaasisiScreen({super.key});

  @override
  State<TaasisiScreen> createState() => _TaasisiScreenState();
}

class _TaasisiScreenState extends State<TaasisiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.timer,
              size: 80,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Text(
              "Inakuja hivi karibuni",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Endelea kuwa tayari kwa habari za kusisimua!",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );

  }
}