import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// Logo with animated Colorize text
    Widget example2 = SplashScreenView(
      navigateRoute: const Homepage(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/splashscreen_image.png",
      text: "Splash Screen",
      textType: TextType.ColorizeAnimationText,
      textStyle: const TextStyle(
        fontSize: 40.0,
      ),
      colors: const [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: example2,
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Native Splash",style: TextStyle(fontSize: 15),),
      ),
      body: const Center(
        child: Text("Successoft Infotech",style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
