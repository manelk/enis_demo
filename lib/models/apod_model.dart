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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    data['date'] = this.date;
    data['explanation'] = this.explanation;
    data['hdurl'] = this.hdurl;
    data['title'] = this.title;
    return data;
  }
}
