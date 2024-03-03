class CourseItem {
  String? user_token;
  String? name;
  String? description;
  String? thumbnail;
  String? video;
  String? price;
  String? amount_total;
  int? lesson_num;
  int? video_len;
  int? down_num;
  int? follow;
  int? score;
  int? id;

  CourseItem({
    this.user_token,
    this.name,
    this.description,
    this.thumbnail,
    this.video,
    this.price,
    this.amount_total,
    this.lesson_num,
    this.video_len,
    this.down_num,
    this.follow,
    this.score,
    this.id,
  });

  factory CourseItem.fromJson(Map<String, dynamic> json) => CourseItem(
        user_token: json["user_token"],
        name: json["name"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        video: json["video"],
        price: json["price"],
        amount_total: json["amount_total"],
        lesson_num: json["lesson_num"],
        video_len: json["video_len"],
        down_num: json["down_num"],
        follow: json["follow"],
        score: json["score"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() {
    return {
      "user_token": user_token,
      "name": name,
      "description": description,
      "thumbnail": thumbnail,
      "video": video,
      "price": price,
      "amount_total": amount_total,
      "lesson_num": lesson_num,
      "video_len": video_len,
      "down_num": down_num,
      "follow": follow,
      "score": score,
      "id": id,
    };
  }
}
