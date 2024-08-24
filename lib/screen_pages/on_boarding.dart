import 'package:flutter/material.dart';
import 'package:windyanggreni_casestudies/screen_pages/welcome_page.dart';

const Color activeColor = Color(0xFF00A59B);
const Color inactiveColor = Color(0xFFCCCCCC);

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [
          buildPage(
              title: '  View and buy \nMedicine online',
              description:
                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
              image: 'images/on_boarding1.png',
              index: 0),
          buildPage(
              title: 'Online medical & \n     Healthcare',
              description:
                  'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.',
              image: 'images/on_boarding2.png',
              index: 1),
        ],
      ),
      bottomSheet: currentIndex == 1
          ? Container(
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: inactiveColor,
                    ),
                    child: Text('Skip'),
                  ),
                  Row(
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? activeColor
                              : inactiveColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => WelcomeScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: activeColor,
                    ),
                    child: Text('Next'),
                  ),
                ],
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: inactiveColor,
                    ),
                    child: Text('Skip'),
                  ),
                  Row(
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? activeColor
                              : inactiveColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: activeColor,
                    ),
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
    );
  }

  Widget buildPage(
      {required String title,
      required String description,
      required String image,
      required int index}) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 180,
            child: Image.asset(image),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
