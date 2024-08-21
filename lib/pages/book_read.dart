import 'package:flutter/material.dart';

class BooksRead extends StatelessWidget {
  final String loremIpsum1 =
      "";
  final String loremIpsum2 =
      "";
  final String loremIpsum3 =
      "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff8ee),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 35,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            top: 10,
                            left: 40,
                            right: 20,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: loremIpsum1,
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1.5,
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/1.png',
                                      width: 700,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                               
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: loremIpsum3,
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1.5,
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/3.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/4.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/5.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/6.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/7.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/8.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/9.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/10.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // Repeat as necessary for images 4.png to 24.png
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/11.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                               
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/12.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: loremIpsum3,
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 1.5,
                                    height: 1.5,
                                    color: Colors.black,
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/13.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/14.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/5.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/16.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/17.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/18.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/19.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/20.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/21.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/22.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/23.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                  WidgetSpan(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 20),
                                    child: Image.asset(
                                      'assets/images/24.png',
                                      width: 600,
                                      height: 500,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark,
                            ),
                            label: Text(
                              "Notes",
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "246/",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: "378",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
