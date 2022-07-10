import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/login_screen.dart';






class getstarted extends StatelessWidget {
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {

    @override
    final List<OnBoardModel> onBoardData = [
      const OnBoardModel(
        title: "REMENT",
        description: "Your academic data, your attendance, performance in tests, holidays, and other vital records are all at your disposal and just a click away from you. Access them from here!",
        imgUrl: "assets/LOGO.png",
      ),
      const OnBoardModel(
        title: "TECHNICAL EVENTS",
        description: "All you geeks out there who want to attend and ace all kinds of technical events throughout the course of your engineering journey, this is for you. Don’t worry about missing any such events owing to this special section on our app.",
        imgUrl: "assets/tech.png",
      ),
      const OnBoardModel(
        title: "CULTURAL EVENTS",
        description:
        "What better than attending cultural events with your friends and relaxing a bit from the academic life. Take part and watch these events unroll around the college campus and leap forward on the extracurriculars front with joy and happiness with your friends!",
        imgUrl:  "assets/cult.png",
      ),
      const OnBoardModel(
        title: "PLACEMENTS",
        description:
        "Want to stay up to date with and get all updates on companies visiting the campus for Job Opportunities/ Internships? We have you covered here so that you ultimately get placed in your dream company.",
        imgUrl:  "assets/place.png",
      ),
    ];
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        onSkip: () {
          // print('skipped');
        },
        // Either Provide onDone Callback or nextButton Widget to handle done state
        onDone: () {
          // print('done tapped');
        },
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: Colors.blue,
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.15,
        ),
        descriptionStyles: TextStyle(
          fontSize: 16,
            color: Colors.black,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Color(0xffC8B6E2),
          activeColor: Color(0xff5B4B8A),
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        skipButton: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
            // print('skipButton pressed');
          },
          child: const Text(
            "Skip",
            style: TextStyle(color: Color(0xff371B58),),
          ),
        ),
        // Either Provide onDone Callback or nextButton Widget to handle done state
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () {
                _onNextTap(state);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));

              },
              child: Container(
                width: 230,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                    colors: [Color(0xff371B58),  Color(0xff4C3575),],
                  ),
                ),
                child: Text(
                  state.isLastPage ? "Get Started" : "Get Started",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState)  {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,


      );


    } else {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>loginscreen()))

      //print("nextButton pressed");
    }
  }
}


