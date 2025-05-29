// Link to generate model: https://javiercbk.github.io/json_to_dart/ :> this is a public archive
// Use this next time: https://dart-quicktype.netlify.app/

class ApodModel {
  String? copyright;
  String? date;
  String? explanation;
  String? hdurl;
  String? title;

  ApodModel({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.title,
  });

  ApodModel.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['copyright'] = copyright;
    data['date'] = date;
    data['explanation'] = explanation;
    data['hdurl'] = hdurl;
    data['title'] = title;
    return data;
  }
}
