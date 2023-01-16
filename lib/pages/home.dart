import 'package:carteira_do_nomade/pages/connections.dart';
import 'package:carteira_do_nomade/pages/graphs.dart';
import 'package:carteira_do_nomade/pages/resume.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  late PageController pageController;

  final _pages = [
    const Resume(),
    const Graphs(),
    const Connections(),
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: _currentPage);
    super.initState();
  }

  setCurrentPage(page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: 'Resumo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline_outlined),
            label: 'Gráficos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud),
            label: 'Conexões',
          )
        ],
        onTap: (page) {
          pageController.animateToPage(
            page,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        currentIndex: _currentPage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white30,
        backgroundColor: HexColor('#292537'),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: setCurrentPage,
        children: const [
          Resume(),
          Graphs(),
          Connections(),
        ],
      ),
    );
  }
}
