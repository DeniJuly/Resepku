import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resepku/component/SliderPage.dart';
import 'package:resepku/theme/theme.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();
  List<Widget> _pages = [
    SliderPage(
      image: 'assets/illustrations/il_onboarding_one.png', 
      title: 'Pilih resep favoritmu.', 
      text: 'tersedia berbagai resep dengan bermacam-macam kategori hidangan.'
      ),
    SliderPage(
      image: 'assets/illustrations/il_onboarding_two.png', 
      title: 'Ribuan resep mudah hanya untukmu.', 
      text: 'Terdapat ribuat resep yang dapat Kamu ikuti dengan mudah.'
      ),
    SliderPage(
      image: 'assets/illustrations/il_onboarding_three.png', 
      title: 'Buat makanan terbaik untukmu dan keluargamu.', 
      text: 'Cari resep favoritmu dan masak masakan terbaikmu.'
      ),
  ];

  _onPageChange(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  _checkSize(int index) {
    if ((index - _currentPage) == 0) {
      return 16.0;
    } else if ((index - _currentPage) == 1 || (index - _currentPage) == -1) {
      return 14.0;
    } else if ((index - _currentPage) == 2 || (index - _currentPage) == -2) {
      return 10.0;
    } else {
      return 8.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, index){
                return _pages[index];
              },
              scrollDirection: Axis.horizontal,
              controller: _controller,
              onPageChanged: _onPageChange,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: List.generate(_pages.length, (index) {
                            return Container(
                              width: 10,
                              height: 10,
                              margin: EdgeInsets.only(right: 5),
                              decoration: BoxDecoration(
                                color: _currentPage == index ? primary : lightGrey,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            );
                          }),
                        ),
                        InkWell(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 800), 
                              curve: Curves.easeInOut);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                            decoration: BoxDecoration(
                              color: lightPrimary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text((_currentPage == (_pages.length - 1)) ? 'Mulai' : 'Lanjut', style: GoogleFonts.poppins(
                              color: primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                            ),)
                          ),
                        )
                      ],
                    ),
                    ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
