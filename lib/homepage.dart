import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _myPicColor = Get.theme.colorScheme.primary;

  @override
  void initState() {
    if (!kDebugMode) {
      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          Get.dialog(AlertDialog(
              title: const Text(
                'Don\'t judge me, I am still making this website!',
                textAlign: TextAlign.center,
              ),
              content: LottieBuilder.network(
                'https://assets2.lottiefiles.com/packages/lf20_4s3kvfcn.json',
              )));
        });
      });
    }
    super.initState();
  }

  int _selectedWorkIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: _getLogo(scale: 0.8),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(onPressed: () {}, child: const Text('About')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                TextButton(onPressed: () {}, child: const Text('Experience')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(onPressed: () {}, child: const Text('Projects')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(onPressed: () {}, child: const Text('Contact')),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 0.15.sw),
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
                        wordSpacing: 4.0)),
                SizedBox(height: 10.h),
                Text('Siddharth Jha.', style: Get.textTheme.displayLarge),
                SizedBox(height: 10.h),
                Text('I build things for the web and mobile.',
                    style: Get.textTheme.displayMedium),
                SizedBox(height: 10.h),
                ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: const Text(
                      'I\'m a software engineer based in Canada who specializes in building (and occasionally designing) exceptional digital experiences which are used by millions of people worldwide. Currently, I am working as a Reasearch Assistant at the University of Alberta.',
                    )),
                SizedBox(height: 50.h),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.android),
                    label: const Text('Check out my most favourite project')),

                //about me
                SizedBox(height: 150.h),
                Text('About Me',
                    style: Get.textTheme.displayLarge!
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
                      ),
                    ),
                  ],
                ),
                //Work Experience
                SizedBox(height: 150.h),
                Text('Where I\'ve Worked',
                    style: Get.textTheme.displayLarge!
                        .copyWith(fontWeight: FontWeight.bold)),

                SizedBox(height: 50.h),

                SizedBox(
                  width: 0.6.sw,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxHeight: 280),
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
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                icon: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/uofa-logo.jpg'),
                                ),
                                label: Text('U of A'),
                              ),
                              NavigationRailDestination(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                icon: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/imbue-logo.png'),
                                ),
                                label: Text('ImbueDesk'),
                              ),
                              NavigationRailDestination(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                icon: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/mohalla-logo.png'),
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
                        Flexible(
                          child: const WorkBody(
                            title: 'Graduate Research Assistant @ U of A',
                            date: "Oct 2020 - Present",
                            body: [
                              "Developed an app that offered real-time public sentiment insights to politicians using flutter and flask",
                              "Developing a mobile and hololens app that allows the client to visualize and interact with data in 3D space using Unity, C# and firebase"
                            ],
                          ),
                        ),
                      if (_selectedWorkIndex == 1)
                        Flexible(
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
                        Flexible(
                            child: WorkBody(
                          title: 'Founder @ Mohalla',
                          date: 'Aug 2019 - Present',
                          body: [
                            "Founded Mohalla to have a platform where people can watch videos together, and grew it to 300k users/year and 1.7M ₹/year in revenue",
                            "The app is built using Flutter and Firebase along with Node.js",
                            "Things I've learned from building this app: Flutter, Firebase, Serverless, Node.js, Designing securtiy rules for Firebase, Marketing, and more",
                            "One of the top free social apps in South Asia",
                          ],
                        ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _getLogo({double? scale}) {
    return Transform.scale(
      scale: scale ?? 1,
      child: SizedBox(
        height: 100,
        child: Stack(
          children: [
            Image.asset(
              'images/logo-bg.png',
              color: Get.theme.colorScheme.primary,
              height: 100,
            ),
            Positioned(
              bottom: 25.0,
              left: 38.0,
              child: AutoSizeText('SJ',
                  style: TextStyle(
                      color: Get.theme.colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 4.0)),
            ),
          ],
        ),
      ),
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
