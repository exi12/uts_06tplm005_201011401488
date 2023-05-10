import 'package:flutter/material.dart';

void main() {
  runApp(const uts_06tplm005());
}

class uts_06tplm005 extends StatefulWidget {
  const uts_06tplm005({Key? key}) : super(key: key);

  @override
  State<uts_06tplm005> createState() => _MyAppState();
}

class _MyAppState extends State<uts_06tplm005> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 25,
          title: Row(
            children: [
              Text(
                "Shoes",
                style: TextStyle(
                  color: Color.fromARGB(231, 14, 14, 13),  fontSize: 45,
                  fontFamily: 'Kanit',
                ),
              ),
              const SizedBox(width: 160),
              Image.asset(
                'assets/images/ikon.png',
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          RoundedBox(
            color: Color.fromARGB(255, 186, 152, 241),           
            text1: 'Nike SB Zoom Blazer',
            text2: 'Mid Premium',
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
                'https://i.postimg.cc/WpdwjJLZ/DA8854-500-1.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 148, 235, 218),          
             text1: 'Nike Air Zoom Pegasus',
            text2: "Men's Rood Runing Shoes",
            text3: '',
            text4: 'Rp 1,399,000',
            imageUrl:
                'https://i.postimg.cc/T3PKSGJQ/44-440309-nike-shoes-png-transparent-background-nike-shoes-png-removebg-preview.png',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 240, 193, 193),
            text1: 'nike air force',
            text2: "Men's Rood Racing Shoe",
            text3: '',
            text4: 'Rp 3,399,000',
            imageUrl:
                'https://i.postimg.cc/vHr4rQwT/download.jpg',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 210, 206, 210),
            text1: 'Nike ZoomX Pavorly',
            text2: "Older Kid's Shoe",
            text3: '1 Colour',
            text4: 'Rp 1,219,000',
            imageUrl:
                'https://i.postimg.cc/JnND4mq9/nike-nike-zoomx-vaporfly-next-2-men-s-marathon-running-shoes-dj5457-100-full01-np6z2f0h.webp',
          ),
          const SizedBox(height: 23),
          RoundedBox(
            color: Color.fromARGB(255, 242, 232, 164),
            text1: 'Nike Waffle One',
            text2: "Men's Shoes",
            text3: '',
            text4: 'Rp 1,729,000',
            imageUrl:
                'https://i.postimg.cc/rpWCWBj9/1635221496shoes-png-image.webp',
          ),
        ],
      ),
    );
  }
}

class RoundedBox extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;

  const RoundedBox({
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 125,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -17,
            right: -2,
            child: Image.network(
              imageUrl,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}