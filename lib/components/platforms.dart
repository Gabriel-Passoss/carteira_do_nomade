import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class Platforms extends StatelessWidget {
  const Platforms({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/platforms/payt.png',
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                    color: HexColor('#7E28F6'),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  'assets/platforms/braip.jpeg',
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/platforms/kiwify.png',
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: InkWell(
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/platforms/eduzz.png',
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: InkWell(
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(right: 20),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width * 0.30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/platforms/hotmart.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
