import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quran/quran.dart' as quran;

class SearchSurahScreen extends StatelessWidget {
  SearchSurahScreen({super.key});
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RawScrollbar(
      trackColor: Colors.grey[600],
      thumbColor: const Color.fromRGBO(89, 78, 39, 1),
      minThumbLength: 5,
      radius: const Radius.circular(12),
      controller: _scrollController,
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 114,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: SizedBox(
                      child: Stack(children: [
                        const Icon(Icons.hexagon_rounded,
                            color: Color.fromRGBO(156, 138, 1, 1), size: 40.0),
                        Positioned(
                          top: -8,
                          left: -4,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                (index + 1).toString(),
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    child: Text(quran.getSurahName(index + 1),
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(156, 138, 1, 1))),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/util/quran_icon.svg',
                    ),
                  ),
                  SizedBox(
                    child: Text(quran.getSurahNameArabic(index + 1),
                        style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(156, 138, 1, 1))),
                  ),
                ],
              ),
            ),
            onTap: () {},
          );
        },
      ),
    ));
  }
}
