import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../constants/string_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 100,
        leading: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            pathImageLogo,
            width: double.infinity,
            height: double.infinity,
          )
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    author,
                    style: TextStyle(
                        fontSize: 12,
                        color: greyAuthor
                    ),
                  ),
                  Text(
                    authorName,
                    style: TextStyle(fontSize: 13, color: black),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(pathImageAvatar),
                ),
              ),
            ],
          ),
        ],
      ),
      body: _buildBodyApp(),
    );
  }

  Widget _buildBodyApp() {
    return Column(
      children: [
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          color: aliceGreen,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                storyName,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 35),
              Text(
                storyTitle,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(height: 45),
        Container(
          height: 250,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child:  Text(
            storyContent,
            style: TextStyle(height: 1.5, fontSize: 14, color: greyContent),
            textAlign: TextAlign.start,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: aliceBlue,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius
                      .zero,
                ),
              ),
              child: const Text(voteIsFunny),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: aliceGreen,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius
                      .zero,
                ),
              ),
              child: const Text(voteIsNotFunny),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Divider(
          thickness: 0.7,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:  Text(
            storySource,
            style: TextStyle(
                height: 1.2,
                fontSize: 12,
                color: greyText),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const SizedBox(
          height: 30,
          child: Text(
            copyRight,
            style: TextStyle(
                color:
                Color.fromARGB(225, 121, 121, 121),
                fontSize: 15
            ),
          ),
        ),
      ],
    );
  }
}
