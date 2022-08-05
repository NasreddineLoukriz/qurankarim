import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'pages.dart';

final bucketG = PageStorageBucket();

class Sora extends StatefulWidget {
  const Sora({Key? key}) : super(key: key);

  @override
  State<Sora> createState() => _SoraState();
}

class _SoraState extends State<Sora> {
  List<String> soraNameOnSearch = [];
  List<int> soraPageOnSearch = [];
  List<int> soraNumOnSearch = [];
  List<int> soraAyaOnSearch=[];
  List  soraMakiyaOrMadniyaOnSearch=[];
  List<String> soraName = [
    'سورة الفاتحة',
    'سورة البقرة',
    'سورة آل عمران',
    'سورة النساء',
    'سورة المائدة',
    'سورة الأنعام',
    'سورة الأعراف',
    'سورة الأنفال',
    'سورة التوبة',
    'سورة يونس',
    'سورة هود',
    'سورة يوسف',
    'سورة الرعد',
    'سورة إبراهيم',
    'سورة الحجر',
    'سورة النحل',
    'سورة الإسراء',
    'سورة الكهف',
    'سورة مريم',
    'سورة طه',
    'سورة الأنبياء',
    'سورة الحج',
    'سورة المؤمنون',
    'سورة النّور',
    'سورة الفرقان',
    'سورة الشعراء',
    'سورة النّمل',
    'سورة القصص',
    'سورة العنكبوت',
    'سورة الرّوم',
    'سورة لقمان',
    'سورة السجدة',
    'سورة الأحزاب',
    'سورة سبأ',
    'سورة فاطر',
    'سورة يس',
    'سورة الصافات',
    'سورة ص',
    'سورة الزمر',
    'سورة غافر',
    'سورة فصّلت',
    'سورة الشورى',
    'سورة الزخرف',
    'سورة الدّخان',
    'سورة الجاثية',
    'سورة الأحقاف',
    'سورة محمد',
    'سورة الفتح',
    'سورة الحجرات',
    'سورة ق',
    'سورة الذاريات',
    'سورة الطور',
    'سورة النجم',
    'سورة القمر',
    'سورة الرحمن',
    'سورة الواقعة',
    'سورة الحديد',
    'سورة المجادلة',
    'سورة الحشر',
    'سورة الممتحنة',
    'سورة الصف',
    'سورة الجمعة',
    'سورة المنافقون',
    'سورة التغابن',
    'سورة الطلاق',
    'سورة التحريم',
    'سورة الملك',
    'سورة القلم',
    'سورة الحاقة',
    'سورة المعارج',
    'سورة نوح',
    'سورة الجن',
    'سورة المزّمّل',
    'سورة المدّثر',
    'سورة القيامة',
    'سورة الإنسان',
    'سورة المرسلات',
    'سورة النبأ',
    'سورة النازعات',
    'سورة عبس',
    'سورة التكوير',
    'سورة الانفطار',
    'سورة المطفّفين',
    'سورة الانشقاق',
    'سورة البروج',
    'سورة الطارق',
    'سورة الأعلى',
    'سورة الغاشية',
    'سورة الفجر',
    'سورة البلد',
    'سورة الشمس',
    'سورة الليل',
    'سورة الضحى',
    'سورة الشرح',
    'سورة التين',
    'سورة العلق',
    'سورة القدر',
    'سورة البينة',
    'سورة الزلزلة',
    'سورة العاديات',
    'سورة القارعة',
    'سورة التكاثر',
    'سورة العصر',
    'سورة الهمزة',
    'سورة الفيل',
    'سورة قريش',
    'سورة الماعون',
    'سورة الكوثر',
    'سورة الكافرون',
    'سورة النصر',
    'سورة المسد',
    'سورة الإخلاص',
    'سورة الفلق',
    'سورة النّاس',
  ];
  final soraPage = [
    4,
    5,
    53,
    80,
    109,
    131,
    154,
    180,
    190,
    211,
    224,
    238,
    252,
    258,
    265,
    270,
    285,
    296,
    308,
    315,
    325,
    335,
    345,
    353,
    362,
    370,
    380,
    388,
    399,
    407,
    414,
    418,
    421,
    431,
    437,
    443,
    449,
    456,
    461,
    470,
    480,
    486,
    492,
    499,
    502,
    505,
    510,
    514,
    518,
    521,
    523,
    526,
    529,
    531,
    534,
    537,
    540,
    545,
    548,
    552,
    554,
    556,
    557,
    559,
    561,
    563,
    565,
    567,
    569,
    571,
    573,
    575,
    577,
    578,
    580,
    581,
    583,
    585,
    586,
    588,
    589,
    590,
    590,
    592,
    593,
    594,
    594,
    595,
    596,
    597,
    598,
    598,
    599,
    599,
    600,
    600,
    601,
    601,
    602,
    602,
    603,
    603,
    604,
    604,
    604,
    605,
    605,
    605,
    606,
    606,
    606,
    607,
    607,
    607,
  ];
  final soraAya = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6,
  ];
  final soraMakiyaOrMadniya = [
    'مكية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مدنية ',
    'مكية ',
    'مكية ',
    'مكية ',
    'مكية ',
  ];

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
                soraNameOnSearch = soraName
                    .where((element) => element.contains(value))
                    .toList();
                if (_textEditingController.text.isNotEmpty) {
                  soraPageOnSearch.clear();
                  soraNumOnSearch.clear();
                  soraMakiyaOrMadniyaOnSearch.clear();
                  soraAyaOnSearch.clear();
                  for (String name in soraNameOnSearch) {
                    soraPageOnSearch.add(soraPage[soraName.indexOf(name)]);
                    soraNumOnSearch.add(soraName.indexOf(name));
                    soraAyaOnSearch.add(soraAya[soraName.indexOf(name)]);
                    soraMakiyaOrMadniyaOnSearch.add(soraMakiyaOrMadniya[soraName.indexOf(name)]);
                    
                  }
                } else {
                  soraPageOnSearch.clear();
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
        bucket: bucketG,
        child: Container(
          color: Colors.white,
          child: _textEditingController.text.isNotEmpty &&
                  soraNameOnSearch.isEmpty
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
              : Column(
                children: [
                  Expanded(child:       ClipRRect(
        
        child: Container(
          height: 60,
          color: Colors.white,
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
              EasyLoading.showToast('ابتسم ',toastPosition: EasyLoadingToastPosition.bottom,);
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                    'اسم السورة',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Hafs',
                    )),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                     'صفحة السورة',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Hafs',
                      ),
                    ),

                    Text(
                      'ايات السورة',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                    Text('مكية او مدنية'
                        ,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                
                    Text(
                       'رقم السورة',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
                  Expanded(
                    flex: 9,
                    child: ListView.separated(
                        key: const PageStorageKey('sura'),
                        padding: const EdgeInsets.all(10),
                        itemCount: _textEditingController.text.isNotEmpty
                            ? soraNameOnSearch.length
                            : soraName.length,
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemBuilder: (context, index) {
                          int suranum = index + 1;
                  
                          return buildCard(
                            index,
                            suranum,
                          );
                        },
                      ),
                  ),
                ],
              ),
        ),
      ),
    );
  }

  Widget buildCard(
    int index,
    int suranum,
  ) =>
      ClipRRect(
        
        child: Container(
          height: 60,
          color: Colors.white,
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
                              ? soraPageOnSearch[index] - 1
                              : soraPage[index] - 1))));
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    _textEditingController.text.isNotEmpty
                        ? soraNameOnSearch[index]
                        : soraName[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Hafs',
                    )),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      (
                      _textEditingController.text.isNotEmpty
                        ? soraPageOnSearch[index]-3
                        :soraPage[index] - 3).toString(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'Hafs',
                      ),
                    ),

                    Text(
                      _textEditingController.text.isNotEmpty
                        ? soraAyaOnSearch[index].toString()
                        :soraAya[index].toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                    Text( _textEditingController.text.isNotEmpty
                        ? soraMakiyaOrMadniyaOnSearch[index]
                        :soraMakiyaOrMadniya[index],
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                
                    Text(
                       _textEditingController.text.isNotEmpty
                        ? (soraNumOnSearch[index]+1).toString()
                        :suranum.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontFamily: 'Hafs',
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
