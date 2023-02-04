import 'package:flutter/material.dart';
import 'package:aplicationm/pages/login.dart';
import 'package:aplicationm/screens/onboarding/components/content_boarding.dart';
import 'package:aplicationm/screens/onboarding/components/content_page.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);
  void incrementPage() {
    if (currentPage < boardingData.length) {
          setState(() {
      currentPage += 1;
    });
    pageController.jumpToPage(currentPage);
    }
  }
  List<Map<dynamic, dynamic>> boardingData = [
    {
      'image': 'assets/images/B1.png',
      'title': 'ESPARCIMIENTO',
      'text': 'Brindamos todos los servicios para consentir a tu mascota',
    },
    {
      'image': 'assets/images/B2.png',
      'title': 'ADOPCION',
      'text': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B3.png',
      'title': 'HOSPITALIDAD',
      'text': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B4.png',
      'title': 'VETERINARIA',
      'text': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    },
    {
      'image': 'assets/images/B5.png',
      'title': 'TIENDA',
      'text': 'nulla faucibus tellus ut odio scelerisque vitae molestie lectus feugiat',
    }
  ];


  @override
   Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            child: PageView.builder(
              controller: pageController,
              itemCount: boardingData.length,
                itemBuilder: (context, index) => ContentBoarding(
                  title: boardingData[index]['title'],
                  text: boardingData[index]['text'],
                  image: boardingData[index]['image'],
                ),
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
            ),
           )
         ),
        Expanded(flex: 1,
          child:Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                    List.generate(
                      boardingData.length, 
                      (index) => page(index: index, currentPage: currentPage),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: currentPage < boardingData.length - 1
                  
                  ? ElevatedButton(onPressed: incrementPage, style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 139, 139, 139),
                    ),
                    foregroundColor: const Color.fromARGB(255, 139, 139, 139),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(290, 45)
                  ), 
                  child:const Text('Siguiente',
                   style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  )
                  : ElevatedButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login())
                    );
                  }, style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 131, 161, 97), 
                    ),
                    backgroundColor: const Color.fromARGB(255, 131, 161, 97),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    fixedSize: const Size(290, 45)
                  ), 
                  child:const Text('Continuar',
                   style: TextStyle(fontSize: 15, 
                   fontWeight: FontWeight.bold,
                   color: Colors.white),
                  ),
                  )
            ),
         ],
        ),
      ),
    ],
   ));
  }
}