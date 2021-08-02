import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_TopCard extends StatelessWidget {
  const Home_TopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /*
        STACK : Background stuff
        */
        Positioned(
          left: 0,
          bottom: 0,
          child: SvgPicture.asset(
            'assets/imgaccent/pplChat.svg',
            width: 105,
          ),
        ),
        Positioned(
          right: -75,
          bottom: -90,
          child: SvgPicture.asset(
            'assets/imgaccent/horn.svg',
            width: 300,
          ),
        ),
        /*
        STACK : Main widget to interact with
        */
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hi, Hamba Allah!',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Welcome Back.',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      SvgPicture.asset(
                        'assets/icons/bell.svg',
                        width: 20,
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/icons/accountPic.svg',
                        width: 36,
                      ),
                    ],
                  ),
                ),
              ),
              // Scrollable Cards
              Expanded(
                flex: 5,
                child: ListView(),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.only(
                    right: 15,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'Show more',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              spreadRadius: 0.1,
                              blurRadius: 10,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/lilHorn.svg',
                          width: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
