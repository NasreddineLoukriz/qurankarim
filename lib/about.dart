import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
          foregroundColor: const Color.fromARGB(255, 214, 119, 58),
          backgroundColor: const Color.fromARGB(120, 255, 255, 255),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
           
            Text('تم بعون الله وحفظه برمجة هذا التطبيق', style: TextStyle(fontFamily: 'Hafs', fontSize: 20),),
            Text('التطبيق مجاني بدون اعلانات وفتوح المصدر', style: TextStyle(fontFamily: 'Hafs', fontSize: 20),),
            Text('الشكر لمجمع الملك فهد لتوفير الملفات المساعدة', style: TextStyle(fontFamily: 'Hafs', fontSize: 18),),
            Text('تم الاستعانة بمكتبات مفتوحة المصدر', style: TextStyle(fontFamily: 'Hafs', fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
