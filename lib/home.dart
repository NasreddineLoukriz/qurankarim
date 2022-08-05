import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'pages.dart';
import 'index.dart';
import 'about.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences preferences;

  @override
  void initState() {
    super.initState;
    shapre();
  }

  Future shapre() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          FloatingActionButton(onPressed:(){
             Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const About())));
          } ,  foregroundColor: const Color.fromARGB(255, 214, 119, 58),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              'حول',
              style: TextStyle(fontFamily: 'Hafs', fontSize: 15),
            ), ),
          
          FloatingActionButton(
            onPressed: () {
              int? numi1 = preferences.getInt('numpage');
              if (numi1 != null) {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Pages(numi1))));
              } else {
                EasyLoading.showToast('لاتوجد علامة محفوظة',toastPosition: EasyLoadingToastPosition.bottom,);
              }
            },
            foregroundColor: const Color.fromARGB(255, 214, 119, 58),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            child: const Text(
              'علامتي',
              style: TextStyle(fontFamily: 'Hafs', fontSize: 15),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Center(
          
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black,
                          side: const BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 214, 119, 58),
                          )
                          
                          ),
                      onPressed: () {
                        int? nump = preferences.getInt("pageSaveG");
                        if(nump==null){
                           Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Pages(3))));
                        }else{

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Pages(nump))));}
                      },
                      child: const Text(
                        'القران الكريم',
                        style: TextStyle(fontFamily: 'Hafs', fontSize: 20),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const StadiumBorder(),
                          primary: Colors.black,
                          side: const BorderSide(
                            width: 2,
                            color: Color.fromARGB(255, 214, 119, 58),
                          )
                          
                          ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) => const Index())));
                      },
                      child: const Text(
                        'الفهرس',
                        style: TextStyle(fontFamily: 'Hafs', fontSize: 20),
                      )),
                ),
              ]),
        ),
      ),
    );
    
  }
}
