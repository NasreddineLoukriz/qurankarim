import 'package:flutter/material.dart';

import 'pages.dart';

final bucketGh = PageStorageBucket();

class Hizb extends StatefulWidget {
  const Hizb({Key? key}) : super(key: key);

  @override
  State<Hizb> createState() => _HizbState();
}

class _HizbState extends State<Hizb> {
  final roboapage = [
    8,
    17,
    27,
    37,
    47,
    57,
    67,
    77,
    87,
    97,
    107,
    117,
    127,
    137,
    147,
    157,
    167,
    178,
    187,
    197,
    207,
    217,
    227,
    236,
    247,
    257,
    267,
    278,
    287,
    298,
    307,
    318,
    327,
    337,
    347,
    357,
    367,
    377,
    387,
    397,
    407,
    418,
    428,
    436,
    447,
    457,
    467,
    477,
    487,
    496,
    508,
    518,
    527,
    537,
    547,
    557,
    567,
    578,
    588,
    597,
  ];
  final nesfpage = [
    10,
    20,
    30,
    40,
    49,
    59,
    70,
    80,
    90,
    100,
    109,
    120,
    129,
    140,
    149,
    159,
    170,
    180,
    190,
    199,
    209,
    220,
    229,
    239,
    250,
    259,
    270,
    280,
    290,
    300,
    309,
    320,
    329,
    339,
    350,
    359,
    370,
    380,
    389,
    399,
    410,
    421,
    429,
    439,
    449,
    459,
    470,
    480,
    489,
    499,
    510,
    520,
    522,
    529,
    539,
    550,
    561,
    569,
    580,
    590,
    599,
  ];
  final talatarbaapage = [
    12,
    22,
    32,
    42,
    52,
    62,
    72,
    82,
    92,
    103,
    112,
    122,
    132,
    143,
    151,
    161,
    173,
    182,
    192,
    202,
    212,
    222,
    231,
    241,
    252,
    262,
    273,
    283,
    292,
    302,
    312,
    322,
    332,
    342,
    353,
    362,
    372,
    382,
    392,
    402,
    413,
    423,
    432,
    442,
    452,
    462,
    472,
    482,
    491,
    502,
    513,
    532,
    542,
    553,
    563,
    572,
    582,
    592,
    603,
  ];
  final hizbpage = [
    4, //
    14, //
    25, //
    35, //
    45, //
    54, //
    65, //
    75, //
    85, //
    95, //
    105, //
    115, //
    124, //
    135, //
    145, //
    154, //
    165, //
    176, //
    185, //
    195, //
    204, //
    215, //
    225, //
    234, //
    245, //
    255, //
    265, //
    275, //
    285, //
    295, //
    305, //
    315, //
    325, //
    335, //
    345, //
    355, //
    365, //
    374, //
    385, //
    395, //
    405, //
    416, //
    425, //
    434, //
    445, //
    454, //
    465, //
    475, //
    485, //
    494, //
    505, //
    516, //
    525, //
    534, //
    545, //
    556, //
    565, //
    575, //
    585, //
    594, //
  ];

  List hizbnumOnSearch = [];
  List hizbnum = [
    'الحزب الاول',
    'الحزب التاني',
    'الحزب الثالث',
    'الحزب الرابع',
    'الحزب الخامس',
    'الحزب السادس',
    'الحزب السابع',
    'الحزب الثامن',
    'الحزب التاسع',
    'الحزب العاشر',
    'الحزب الحادي عشر',
    'الحزب التاني عشر',
    'الحزب الثالث عشر',
    'الحزب الرابع عشر',
    'الحزب الخامس عشر',
    'الحزب السادس عشر',
    'الحزب السابع عشر',
    'الحزب الثامن عشر',
    'الحزب التاسع عشر',
    'الحزب العشرون',
    'الحزب الحادي والعشرون',
    'الحزب التاني والعشرون',
    'الحزب الثالث والعشرون',
    'الحزب الرابع والعشرون',
    'الحزب الخامس والعشرون',
    'الحزب السادس والعشرون',
    'الحزب السابع والعشرون',
    'الحزب الثامن والعشرون',
    'الحزب التاسع والعشرون',
    'الحزب الثلاثون',
    'الحزب الحادي والثلاثون',
    'الحزب التاني والثلاثون',
    'الحزب الثالث والثلاثون',
    'الحزب الرابع والثلاثون',
    'الحزب الخامس والثلاثون',
    'الحزب السادس والثلاثون',
    'الحزب السابع والثلاثون',
    'الحزب الثامن والثلاثون',
    'الحزب التاسع والثلاثون',
    'الحزب الاربعون',
    'الحزب الحادي والاربعون',
    'الحزب التاني والاربعون',
    'الحزب الثالث والاربعون',
    'الحزب الرابع والاربعون',
    'الحزب الخامس والاربعون',
    'الحزب السادس والاربعون',
    'الحزب السابع والاربعون',
    'الحزب الثامن والاربعون',
    'الحزب التاسع والاربعون',
    'الحزب الخمسون',
    'الحزب الحادي والخمسون',
    'الحزب التاني والخمسون',
    'الحزب الثالث والخمسون',
    'الحزب الرابع والخمسون',
    'الحزب الخامس والخمسون',
    'الحزب السادس والخمسون',
    'الحزب السابع والخمسون',
    'الحزب الثامن والخمسون',
    'الحزب التاسع والخمسون',
    'الحزب الستون',
  ];
  List hizbpageOnSerch = [];
  final _controller = ScrollController();
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                hizbnumOnSearch = hizbnum
                    .where((element) => element.contains(value))
                    .toList();
                if (_textEditingController.text.isNotEmpty) {
                  hizbpageOnSerch.clear();
                  for (String name in hizbnumOnSearch) {
                    hizbpageOnSerch.add(hizbnum.indexOf(name));
                  }
                } else {
                  hizbpageOnSerch.clear();
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
      body: PageStorage(
        bucket: bucketGh,
        child: Container(
          color: Colors.white,
          child:
              _textEditingController.text.isNotEmpty && hizbnumOnSearch.isEmpty
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
                  : ListView.separated(
                      key: const PageStorageKey('hizb'),
                      controller: _controller,
                      padding: const EdgeInsets.all(10),
                      itemCount: _textEditingController.text.isNotEmpty
                          ? hizbnumOnSearch.length
                          : hizbnum.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (context, index) {
                        int hizbnumi = index + 1;

                        return buildCard(
                          index,
                          hizbnumi,
                        );
                      },
                    ),
        ),
      ),
    );
  }

  Widget buildCard(
    int index,
    int hizbnumi,
  ) =>
      ClipRRect(
        //  borderRadius: BorderRadius.circular(50),

        child: SizedBox(
          // decoration: BoxDecoration(
          //   color: Color.fromARGB(255, 0, 0, 0),
          //   borderRadius: BorderRadius.circular(60)
          // ),
          height: 60,
          // color: Colors.white,
          // padding: EdgeInsets.all(20.0),
          // margin: EdgeInsets.all(20.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.black,
                side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 214, 119, 58),
                )
                // onPrimary: Colors.greenAccent
                ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Pages(
                          _textEditingController.text.isNotEmpty
                              ? hizbpage[hizbpageOnSerch[index]] - 1
                              : hizbpage[index] - 1))));
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    _textEditingController.text.isNotEmpty
                        ? hizbnumOnSearch[index]
                        : hizbnum[index],
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Hafs',
                    )),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.all(1.0),

                          // side: BorderSide(
                          //   width: 1,
                          //   color: Color.fromARGB(255, 226, 138, 6),
                          // )
                          // onPrimary: Colors.greenAccent
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Pages(
                                      _textEditingController.text.isNotEmpty
                                          ? talatarbaapage[
                                                  hizbpageOnSerch[index]] -
                                              1
                                          : talatarbaapage[index] - 1))));
                        },
                        child: const Text('ثلاثة ارباع الحزب',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Hafs',
                            )),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black, padding: const EdgeInsets.all(1.0),
                            // side: BorderSide(
                            //   width: 1,
                            //   color: Color.fromARGB(255, 226, 138, 6),
                            // )
                            // onPrimary: Colors.greenAccent
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Pages(
                                        _textEditingController.text.isNotEmpty
                                            ? nesfpage[hizbpageOnSerch[index]] -
                                                1
                                            : nesfpage[index] - 1))));
                          },
                          child: const Text('نصف الحزب',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Hafs',
                              ))),
                    ),
                    Expanded(
                      child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.black, padding: const EdgeInsets.all(1.0),
                            // side: BorderSide(
                            //   width: 1,
                            //   color: Color.fromARGB(255, 226, 138, 6),
                            // )
                            // onPrimary: Colors.greenAccent
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Pages(
                                        _textEditingController.text.isNotEmpty
                                            ? roboapage[
                                                    hizbpageOnSerch[index]] -
                                                1
                                            : roboapage[index] - 1))));
                          },
                          child: const Text('ربع الحزب',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Hafs',
                              ))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
