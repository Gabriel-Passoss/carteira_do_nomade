import 'package:carteira_do_nomade/components/platforms.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [HexColor('#292537'), HexColor('#332F47')],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Olá, Gabriel',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: ClipOval(
                      child: Image.network(
                        'https://github.com/Gabriel-Passoss.png',
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Platforms()
            ],
          ),
        ),
      ),
    );
  }
}
