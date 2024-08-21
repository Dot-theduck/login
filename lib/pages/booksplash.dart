import 'package:flutter/material.dart';
import 'package:login/pages/book_home.dart';

class BooksSplash extends StatelessWidget {
  final String username;

  // Constructor to accept the username
  const BooksSplash({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30,
              horizontal: 40,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(), // Placeholder for any content you might want to add
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffC44536),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "read\nlisten\nlearn",
                        style: TextStyle(
                          height: 1.75,
                          letterSpacing: 2,
                          color: Color(0xffC44536),
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(40),
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffC44536),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BooksHome(username: username),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
