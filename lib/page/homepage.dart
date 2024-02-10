import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--;
      if (isEmpty == true) {
        isEmptyPage();
      }

      print(count);
    });
  }

  void increment() {
    count++;
    setState(() {
      if (isFull == true) {
        isFullPage(isFull);
      }
      print(count);
    });
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 7;

  isEmptyPage() {
    Navigator.pushNamed(context, '/isempty');
  }

  void isFullPage(isFull) {
    Navigator.pushNamed(context, '/isfull');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/wallpaper.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ]),
              child: const Text(
                'Pode entrar no meu coração',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    foregroundColor: Colors.pink.shade200,
                    fixedSize: const Size(150, 150),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 32,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 6,
                        style: BorderStyle.solid,
                        color: Colors.pink.shade300,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          25,
                        ),
                      ),
                    ),
                  ),
                  onPressed: increment,
                  child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black,
                    foregroundColor: Colors.pink.shade200,
                    fixedSize: const Size(150, 150),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 32,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 6,
                        style: BorderStyle.solid,
                        color: Colors.pink.shade300,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          25,
                        ),
                      ),
                    ),
                  ),
                  onPressed: isEmpty ? null : decrement,
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
