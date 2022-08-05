import 'dart:convert';

import 'package:flutter/material.dart';

import 'pages.dart';
import 'package:flutter/services.dart';
import 'quran.dart';

class QuranData extends StatefulWidget {
  const QuranData({Key? key}) : super(key: key);

  @override
  State<QuranData> createState() => _QuranDataState();
}

class _QuranDataState extends State<QuranData> {
  List<Quran> quran = [];
  List<String> aya = [];

  List ayaOnSearch = [];
  List ayaPageOnSearch = [];

  @override
  void initState() {
    super.initState();

    readJsonFile();
  }

  Future<void> readJsonFile() async {
   

    final String response =
        await rootBundle.loadString('assets/data/quradata.json');

    final productData = await json.decode(response);

    var list = productData as List;
  

    quran = list.map((e) => Quran.fromJson(e)).toList();
  }

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.small(
              foregroundColor: const Color.fromARGB(255, 214, 119, 58),
              backgroundColor: const Color.fromARGB(120, 255, 255, 255),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.chevron_left_outlined ),
          ),
        ],
      ),
       
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 214, 119, 58),
        automaticallyImplyLeading: false,
        actions: const [Icon(Icons.search)],
        title: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: TextField(
            onChanged: (value) {
              setState(() {
                ayaOnSearch =
                    aya.where((element) => element.contains(value)).toList();
                if (_textEditingController.text.isNotEmpty) {
                  ayaPageOnSearch.clear();
                  for (String name in ayaOnSearch) {
                    ayaPageOnSearch.add(aya.indexOf(name));
                  }
                } else {
                  ayaOnSearch.clear();
                }
              });
            },
            controller: _textEditingController,
            decoration: const InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: 'بحث'),
          ),
        ),
      ),
      body: Center(child: info()),
    );
  }

  Widget info() {
    if (quran.isEmpty) {
      return Center(
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                readJsonFile();
              });
            },
            //CircularProgress
            child: const Text('تحميل المعلومات ')),
      );
    } else {
      aya.clear();
      for (int i = 0; i <= quran.length - 1; i = i + 1) {
        aya.add(quran[i].ayatextemlaey);
      }
      return _textEditingController.text.isNotEmpty && ayaOnSearch.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.search_off_rounded,
                    size: 50,
                  ),
                  Text('لاتوجد نتيجة',
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Hafs',
                      )),
                ],
              ),
            )
          : ListView.builder(
              itemCount: _textEditingController.text.isNotEmpty
                  ? ayaOnSearch.length
                  : aya.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(

                  title: Text(textDirection: TextDirection.rtl,
                    _textEditingController.text.isNotEmpty
                        ? quran[ayaPageOnSearch[index]].soranamear
                        : quran[index].soranamear,
                    style: const TextStyle(fontFamily: 'Hafs', fontSize: 30),
                  ),
                  subtitle: Text(textDirection: TextDirection.rtl,
                    _textEditingController.text.isNotEmpty
                        ? quran[ayaPageOnSearch[index]].ayatextemlaey
                        : quran[index].ayatextemlaey,
                    style: const TextStyle(fontFamily: 'Hafs', fontSize: 25),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Pages(
                                _textEditingController.text.isNotEmpty
                                    ? quran[ayaPageOnSearch[index]].page+2
                                    : quran[index].page + 2))));
                  },
                );
              },
            );
    }
  }
}
