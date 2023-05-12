class Tour {
  Tour({
      required this.bannerTitle,
      required this.bannerImages,
      required this.rating,
      required this.description,
      required this.details,
      required this.popularTreks,});

  factory Tour.fromJson(dynamic json) {
    return Tour(
        bannerTitle: json['bannerTile']?? 'Kashmir Great Lakes Trek',
        bannerImages: json['bannerImages']?? [],
        rating: json['rating']?? 0,
        description: json['description']?? '',
        details: json['details']?? [],
        popularTreks: json['popularTreks']?? []
    );
  }
  String? bannerTitle;
  List<dynamic>? bannerImages;
  double? rating;
  String? description;
  List<dynamic>? details;
  List<dynamic>? popularTreks;

  // Map<String, dynamic> toJson() {
  //   final map = <String, dynamic>{};
  //   map['bannerTitle'] = bannerTitle;
  //   map['bannerImages'] = bannerImages;
  //   map['rating'] = rating;
  //   map['description'] = description;
  //   map['details'] = details;
  //   if (popularTreks != null) {
  //     map['popularTreks'] = popularTreks.map((v) => v.toJson()).toList();
  //   }
  //   return map;
  // }

}