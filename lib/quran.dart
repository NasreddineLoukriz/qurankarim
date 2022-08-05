class Quran{
  int id;
  String soranamear;
  int page;
  String ayatextemlaey;

Quran({
    this.id=0,
    this.soranamear='',
    this.page=0,
    this.ayatextemlaey='',
    });
factory Quran.fromJson(Map<String, dynamic> json) {
    return Quran(
        id: json['id'],
        soranamear: json['sora_name_ar'],
        page: json['page'],
        ayatextemlaey: json['aya_text_emlaey']);
  }
   Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataAya = <String, dynamic>{};
    dataAya['id'] = id;
    dataAya['sura_name_ar'] = soranamear;
    dataAya['page'] = page;
    dataAya['aya_text_emlaey'] = ayatextemlaey;
    return dataAya;
  }
}