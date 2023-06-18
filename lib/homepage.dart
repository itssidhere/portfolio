import 'dart:math';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/helper/sid_logo.dart';
import 'package:portfolio/main.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _myPicColor = Get.theme.colorScheme.primary;
  final _scrollController = ScrollController();
  var isMob = isMobile();

  @override
  void initState() {
    super.initState();
  }

  int _selectedWorkIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SidLogo(scale: 0.8).animate().fadeIn(),
        centerTitle: isMob,
        actions: isMob
            ? []
            : [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                      onPressed: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          _scrollController.animateTo(0.5.sh,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: const Text('About')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                      onPressed: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          _scrollController.animateTo(1.5.sh,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: const Text('Experience')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                      onPressed: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          _scrollController.animateTo(2.5.sh,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut);
                        });
                      },
                      child: const Text('Projects')),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextButton(
                      onPressed: () {
                        launchUrlString('mailto: sidjha0001@gmail.com');
                      },
                      child: const Text('Contact')),
                ),
              ],
      ),
      body: Builder(builder: (context) {
        bool showSideBar = !isMob;
        var bodyPadding = isMob
            ? EdgeInsets.symmetric(horizontal: 0.08.sw, vertical: 16.0)
            : EdgeInsets.symmetric(horizontal: 0.16.sw, vertical: 32.0);

        var sectionSpacing = isMob ? 75.h : 150.h;

        return Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: bodyPadding,
                child: SizedBox(
                  width: 1.sw,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.h),
                      Text('Hi, my name is',
                              style: TextStyle(
                                  color: Get.theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  wordSpacing: 4.0))
                          .animate()
                          .fadeIn(delay: 500.ms),
                      SizedBox(height: 10.h),
                      Text('Siddharth Jha.',
                              style: isMob
                                  ? Get.textTheme.displayMedium
                                  : Get.textTheme.displayLarge)
                          .animate()
                          .fadeIn(delay: 1500.ms, duration: 1000.ms),
                      SizedBox(height: 10.h),
                      Text('I build things for the web and mobile.',
                              style: isMob
                                  ? Get.textTheme.displaySmall
                                  : Get.textTheme.displayMedium)
                          .animate()
                          .fadeIn(delay: 2500.ms, duration: 1000.ms),
                      SizedBox(height: 10.h),
                      ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 500),
                              child: const Text(
                                'I\'m a software engineer based in Canada who specializes in building (and occasionally designing) exceptional digital experiences which are used by millions of people worldwide. Currently, I am working as a Reasearch Assistant at the University of Alberta.',
                              ))
                          .animate()
                          .fadeIn(delay: 3500.ms, duration: 1000.ms),
                      SizedBox(height: 50.h),
                      OutlinedButton.icon(
                              onPressed: () {
                                launchUrlString(
                                    'https://play.google.com/store/apps/details?id=com.cluxid.mohalla&hl=en_CA&gl=US');
                              },
                              icon: const Icon(Icons.android),
                              label: const Text(
                                  'Check out my most favourite project'))
                          .animate()
                          .scaleX(
                              delay: const Duration(seconds: 5),
                              begin: 1,
                              end: 1.1)
                          .scaleY(begin: 1, end: 1.1)
                          .then()
                          .scaleX(begin: 1.1, end: 1)
                          .scaleY(begin: 1.1, end: 1),

                      //about me
                      SizedBox(height: sectionSpacing),
                      Text('About Me',
                          style: Get.textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)),

                      SizedBox(height: 50.h),

                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Hi, I'm Siddharth! Ever since I was in 10th grade, I've been tinkering with different programming languages and tools. One language that really stood out to me was Python, and I delved deep into it, reading multiple books like 'Head First Programming' to learn as much as I could.\n\nBut I didn't just stop at learning. I wanted to put my skills to the test and see what I could create. That's when I came up with the idea for a social watch together app, and I used Flutter and Firebase to develop it. To my surprise, it quickly gained popularity and grew to over 330,000 users!\n\nSince then, I've continued to develop my skills and create multiple mobile and web apps using Flutter. What drives me is the desire to solve complex problems and create innovative solutions that make a real difference in people's lives. I believe that my technical expertise, passion for programming, and willingness to learn make me a valuable asset to any development team.",
                                  ),
                                  SizedBox(height: 50.h),
                                  const Text(
                                      'Here are a few technologies I\'ve been working with recently:'),
                                  SizedBox(height: 30.h),
                                  Wrap(
                                    spacing: 4.0,
                                    runSpacing: 4.0,
                                    children: const [
                                      Chip(label: Text('Flutter')),
                                      Chip(label: Text('Dart')),
                                      Chip(label: Text('Firebase')),
                                      Chip(label: Text('Python')),
                                      Chip(label: Text('JavaScript')),
                                      Chip(label: Text('Node.js')),
                                      Chip(label: Text('Machine Learning')),
                                    ],
                                  )
                                ]),
                          ),
                          if (!isMob)
                            Expanded(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 32.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: MouseRegion(
                                        onEnter: (event) {
                                          setState(() {
                                            _myPicColor = Colors.transparent;
                                          });
                                        },
                                        onExit: (event) {
                                          setState(() {
                                            _myPicColor =
                                                Get.theme.colorScheme.primary;
                                          });
                                        },
                                        child: SizedBox(
                                            height: 270.h,
                                            child: Image.asset(
                                              'images/my-photo.jpg',
                                              fit: BoxFit.fill,
                                              color: _myPicColor,
                                              colorBlendMode: BlendMode.color,
                                            )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),

                      if (isMob) SizedBox(height: 50.h),
                      if (isMob)
                        Center(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    _myPicColor = Colors.transparent;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    _myPicColor = Get.theme.colorScheme.primary;
                                  });
                                },
                                child: SizedBox(
                                    height: 270.h,
                                    child: Image.asset(
                                      'images/my-photo.jpg',
                                      fit: BoxFit.fill,
                                      color: _myPicColor,
                                      colorBlendMode: BlendMode.color,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      //Work Experience

                      SizedBox(height: 150.h),
                      Text('Where I\'ve Worked',
                          style: Get.textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)),

                      SizedBox(height: 50.h),

                      SizedBox(
                        width: isMob ? 1.sw : 0.6.sw,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(maxHeight: 350),
                              child: NavigationRail(
                                  //backgroundColor: Colors.transparent,

                                  useIndicator: true,
                                  labelType: NavigationRailLabelType.selected,
                                  onDestinationSelected: (value) {
                                    setState(() {
                                      _selectedWorkIndex = value;
                                    });
                                  },
                                  destinations: const <NavigationRailDestination>[
                                    NavigationRailDestination(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      icon: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/mcelhanney_logo.jpeg'),
                                      ),
                                      label: Text('McElhanney'),
                                    ),
                                    NavigationRailDestination(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      icon: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/uofa-logo.jpg'),
                                      ),
                                      label: Text('U of A'),
                                    ),
                                    NavigationRailDestination(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      icon: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/imbue-logo.png'),
                                      ),
                                      label: Text('ImbueDesk'),
                                    ),
                                    NavigationRailDestination(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.0),
                                      icon: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/mohalla-logo.png'),
                                      ),
                                      label: Text('Mohalla'),
                                    ),
                                  ],
                                  selectedIndex: _selectedWorkIndex),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            if (_selectedWorkIndex == 0)
                              const Flexible(
                                child: const WorkBody(
                                  title: 'Software Developer @ McElhanney',
                                  date: "May 2023 - Present",
                                  body: [
                                    "Designed and implemented an interactive app interface using Kotlin Jetpack Compose, allowing clients to view and manipulate 3D models in real time within their physical environment",
                                    "Integrated cloud anchors functionality to ensure persistent placement of 3D models across different sessions, enabling users to easily revisit and interact with their virtual objects",
                                    "Collaborated closely with clients to understand their specific requirements and use cases, resulting in a tailored app experience that meets their visualization needs effectively",
                                    "Leveraged Kotlin's concise syntax and Jetpack Compose's declarative UI toolkit to streamline the development process, leading to improved efficiency and faster turnaround time for feature implementation"
                                  ],
                                ),
                              ),
                            if (_selectedWorkIndex == 1)
                              const Flexible(
                                child: const WorkBody(
                                  title: 'Graduate Research Assistant @ U of A',
                                  date: "Oct 2022 - April 2023",
                                  body: [
                                    "Developed an app that offered real-time public sentiment insights to politicians using flutter and flask",
                                    "Developing a mobile and hololens app that allows the client to visualize and interact with data in 3D space using Unity, C# and firebase"
                                  ],
                                ),
                              ),
                            if (_selectedWorkIndex == 1)
                              const Flexible(
                                child: WorkBody(
                                  title: 'Software Developer @ ImbueDesk',
                                  date: 'Oct 2020 - March 2022',
                                  body: [
                                    "Implemented an environmental conservation app, resulting in a 20% increase in user engagement and a 15% reduction in carbon footprint",
                                    "Incorporated Flutter as the primary framework and Firebase as the backend to build the app, resulting in a 25% reduction in development time",
                                    "Coordinated the implementation of features that promote sustainability and environmental conservation, including carbon offsetting methods, design, and integration of technologies such as Flutter and Firebase"
                                  ],
                                ),
                              ),
                            if (_selectedWorkIndex == 2)
                              const Flexible(
                                  child: WorkBody(
                                title: 'Founder @ Mohalla',
                                date: 'Aug 2019 - Present',
                                body: [
                                  "Founded Mohalla to have a platform where people can watch videos together, and grew it to 300k users/year and 1.7M ₹/year in revenue",
                                  "The app is built using Flutter and Firebase along with Node.js",
                                  "Things I've learned from building this app: Flutter, Firebase, Serverless, Node.js, Designing securtiy rules for Firebase, Marketing, and more",
                                  "One of the top free social apps in South Asia",
                                ],
                              )),
                          ],
                        ),
                      ),

                      //Projects
                      SizedBox(height: 150.h),
                      Text('Some things I\'ve built',
                          style: Get.textTheme.displaySmall!
                              .copyWith(fontWeight: FontWeight.bold)),

                      SizedBox(height: 50.h),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.theme.colorScheme.primaryContainer,
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1488509082528-cefbba5ad692?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
                              height: 0.6.sh,
                              fit: BoxFit.cover,
                              width: isMob ? 1.sw : 0.4.sw,
                            ),
                            Positioned.fill(
                                child: ClipRRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  height: 0.6.sh,
                                  width: isMob ? 1.sw : 0.4.sw,
                                  color: Get.theme.colorScheme.primaryContainer
                                      .withOpacity(0.3),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 32.0,
                                        right: 32.0,
                                        bottom: 32.0,
                                        top: 100.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Featured Project',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Get.theme.colorScheme
                                                      .primary)),
                                          Text('Mohalla',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30)),
                                          SizedBox(height: 20.h),
                                          Text(
                                              'Mohalla is a social app where you can watch videos with your friends and family. It\'s built using Flutter and Firebase along with Node.js'),
                                          SizedBox(height: 20.h),
                                          Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            children: [
                                              Text('Flutter'),
                                              Text('Firebase'),
                                              Text('Node.js'),
                                              Text('Dart'),
                                            ],
                                          ),
                                          SizedBox(height: 20.h),
                                          OutlinedButton(
                                              onPressed: () {
                                                launchUrlString(
                                                    'https://play.google.com/store/apps/details?id=com.cluxid.mohalla&hl=en_CA&gl=US');
                                              },
                                              child: const Text(
                                                  'View on Play Store')),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),

                      SizedBox(height: 50.h),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.theme.colorScheme.primaryContainer,
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
                              height: 0.6.sh,
                              fit: BoxFit.cover,
                              width: isMob ? 1.sw : 0.4.sw,
                            ),
                            Positioned.fill(
                                child: ClipRRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  height: 0.6.sh,
                                  width: isMob ? 1.sw : 0.4.sw,
                                  color: Get.theme.colorScheme.primaryContainer
                                      .withOpacity(0.3),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 32.0,
                                        right: 32.0,
                                        bottom: 32.0,
                                        top: 100.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Featured Project',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Get.theme.colorScheme
                                                      .primary)),
                                          Text('KarmaPluss',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30)),
                                          SizedBox(height: 20.h),
                                          Text(
                                              'KarmaPluss is a complete recycling solution, it is a creative application to contribute to the environment, with little steps taken every day for an amplified change globally'),
                                          SizedBox(height: 20.h),
                                          Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            children: [
                                              Text('Flutter'),
                                              Text('Firebase'),
                                              Text('Node.js'),
                                              Text('Dart'),
                                            ],
                                          ),
                                          SizedBox(height: 20.h),
                                          OutlinedButton(
                                              onPressed: () {
                                                launchUrlString(
                                                    'https://play.google.com/store/apps/details?id=com.karmapluss.karmapluss&hl=en_IN&gl=US');
                                              },
                                              child: const Text(
                                                  'View on Play Store')),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),
                      SizedBox(height: 50.h),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Get.theme.colorScheme.primaryContainer,
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Image.network(
                              'https://images.unsplash.com/photo-1602906530215-1bf5f4925279?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80',
                              height: 0.6.sh,
                              fit: BoxFit.cover,
                              width: isMob ? 1.sw : 0.4.sw,
                            ),
                            Positioned.fill(
                                child: ClipRRect(
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                                child: Container(
                                  height: 0.6.sh,
                                  width: isMob ? 1.sw : 0.4.sw,
                                  color: Get.theme.colorScheme.primaryContainer
                                      .withOpacity(0.3),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 32.0,
                                        right: 32.0,
                                        bottom: 32.0,
                                        top: 100.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Featured Project',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Get.theme.colorScheme
                                                      .primary)),
                                          Text('VotewiseIQ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30)),
                                          SizedBox(height: 20.h),
                                          Text(
                                              'VotewiseIQ is a powerful platform that provides live public sentiment analysis on a variety of topics. It is built using the Flutter framework for the user interface, Flask for the backend, and Firebase for data storage and real-time updates'),
                                          SizedBox(height: 20.h),
                                          Wrap(
                                            spacing: 10,
                                            runSpacing: 10,
                                            children: [
                                              Text('Flutter'),
                                              Text('Dart'),
                                              Text('Firebase'),
                                              Text('Python'),
                                              Text('Flask'),
                                            ],
                                          ),
                                          SizedBox(height: 20.h),
                                          OutlinedButton(
                                              onPressed: () {
                                                launchUrlString(
                                                    'https://github.com/itssidhere/votewiseiq');
                                              },
                                              child:
                                                  const Text('View on Github')),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                          ],
                        ),
                      ),

                      SizedBox(height: 150.h),
                      Center(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Get In Touch',
                                  style: Get.textTheme.displaySmall!
                                      .copyWith(fontWeight: FontWeight.bold)),
                              SizedBox(height: 20.h),
                              Text(
                                  'I\'m always open to discussing new projects, so if you\'d like to chat please get in touch.',
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                      color: Get.theme.colorScheme.onPrimary)),
                              SizedBox(height: 50.h),
                              OutlinedButton(
                                  onPressed: () {
                                    launchUrlString(
                                        'mailto:sidjha0001@gmail.com');
                                  },
                                  child: Text('Email Me')),

                              SizedBox(height: 100.h),

                              // Footer

                              if (!showSideBar)
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: IconButton(
                                            icon: Icon(FontAwesomeIcons.github),
                                            onPressed: () {
                                              launchUrlString(
                                                  'https://github.com/itssidhere');
                                            },
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                          icon: Icon(FontAwesomeIcons.linkedin),
                                          onPressed: () {
                                            launchUrlString(
                                                'https://www.linkedin.com/in/siddharth-jha-74b15a239/');
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                          icon: Icon(FontAwesomeIcons.twitter),
                                          onPressed: () {
                                            launchUrlString(
                                                'https://twitter.com/itssidhere');
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: IconButton(
                                          icon: const Icon(
                                              FontAwesomeIcons.stackOverflow),
                                          onPressed: () {
                                            launchUrlString(
                                                'https://stackoverflow.com/users/6051666/siddharth-jha');
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              if (!showSideBar)
                                SizedBox(
                                  height: 8.0,
                                ),

                              TextButton(
                                  onPressed: () {
                                    launchUrlString(
                                        'https://github.com/itssidhere/portfolio');
                                  },
                                  child: const Text(
                                      'Designed & Developed by Siddharth Jha')),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: showSideBar,
              child: Positioned(
                bottom: 0.0,
                left: 40.0,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            launchUrlString('https://github.com/itssidhere');
                          },
                        )).animate().fadeIn(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          launchUrlString(
                              'https://www.linkedin.com/in/siddharth-jha-74b15a239/');
                        },
                      ),
                    ).animate().fadeIn(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        onPressed: () {
                          launchUrlString('https://twitter.com/itssidhere');
                        },
                      ),
                    ).animate().fadeIn(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: IconButton(
                        icon: const Icon(FontAwesomeIcons.stackOverflow),
                        onPressed: () {
                          launchUrlString(
                              'https://stackoverflow.com/users/6051666/siddharth-jha');
                        },
                      ),
                    ).animate().fadeIn(),
                    Container(
                      margin: const EdgeInsets.only(top: 8.0),
                      height: 0.25.sh,
                      width: 2.0,
                      color: Get.theme.colorScheme.primaryContainer,
                    ).animate().fadeIn(),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: showSideBar,
              child: Positioned(
                  bottom: 0.0,
                  right: 20.0,
                  child: Column(children: [
                    Transform.rotate(
                            angle: 90 * pi / 180,
                            child: const Text('sidjha0001@gmail.com'))
                        .animate()
                        .fadeIn(),
                    SizedBox(height: 66.sp),
                    Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      height: 0.25.sh,
                      width: 2.0,
                      color: Get.theme.colorScheme.primaryContainer,
                    ).animate().fadeIn(),
                  ])),
            )
          ],
        );
      }),
    );
  }
}

class WorkBody extends StatelessWidget {
  final String title;
  final String date;
  final List<String> body;
  const WorkBody({
    super.key,
    required this.title,
    required this.date,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Get.textTheme.titleMedium),
        const SizedBox(height: 8.0),
        Text(date, style: Get.textTheme.bodySmall),
        ...body
            .map((e) => Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text('• $e'),
                ))
            .toList(),
      ],
    );
  }
}
