import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_work/search_by_surah_screen.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
              indicatorPadding: EdgeInsets.only(left: 12.0, right: 12.0),
              indicatorColor: Color.fromRGBO(156, 138, 1, 1),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4.0,
              tabs: [
                Tab(
                  child: Text(
                    'By Surah',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(156, 138, 1, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    'By Parah',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(156, 138, 1, 1)),
                  ),
                ),
                Tab(
                  child: Text(
                    'By Bookmark',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(156, 138, 1, 1)),
                  ),
                ),
              ]),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text('List Quran',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: TabBarView(children: [
          SearchSurahScreen(),
          const Center(
            child: Text('By Parah'),
          ),
          const Center(
            child: Text('By Bookmark'),
          ),
        ]),
      ),
    );
  }
}
