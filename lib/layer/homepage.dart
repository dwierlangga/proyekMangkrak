import 'package:app_example/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';

void main() => runApp(MyApp());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> choose =[
    "Beranda",
    "Tentang",
    "Info Publik",
    "Pelayanan Publik",
    "Pelayanan Masyarakat",
    "Kontak",
  ];

  List<String> imglist =[
    "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
    "https://images.hdqwalls.com/download/spiderman-peter-parker-standing-on-a-rooftop-ix-1280x720.jpg",
     "https://images.wallpapersden.com/image/download/peter-parker-spider-man-homecoming_bGhsa22UmZqaraWkpJRmZ21lrWxnZQ.jpg",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU", 
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation :0.0,
        title: Text('App Example',
        style: TextStyle(
          color: Colors.black,
        ),),
        leading: Image.asset('img/bus.png'),
        leadingWidth: 100,
      ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color.fromARGB(255, 77, 77, 77), Colors.white]),
        ),

        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: choose.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index){
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.all(5),
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: current == index
                            ? null : null,
                            borderRadius: current == index
                            ? BorderRadius.circular(10) : null,
                            border: current == index
                            ? Border.all(color: Colors.black, width : 2) : null,
                          ),
                          child: Center(
                            child: Text(
                              choose[index],
                              style: TextStyle(
                                fontWeight : FontWeight.bold,
                                color: current == index
                                ? Colors.black : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),

            Stack(
              children: [
                Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(29, 82, 81, 81),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),

                  child: CarouselSlider(
                    options : CarouselOptions(
                      enlargeCenterPage : true,
                      enableInfiniteScroll : false,
                      autoPlay: true,
                    ),
                    items : imglist.map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image.network(e,
                          width: 1050,
                          height: 350,
                          fit: BoxFit.cover,)
                        ],
                      ),
                    )
                    ).toList(),
                  ),
                )
              ],
            )            
          ],
        ),
      ),
    );
  }
}

