class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Thác Datanla', 'Place 1', 'assets/images/big1.png'),
      Travel('Langbiang', 'Place 2', 'assets/images/big2.jpeg'),
      Travel('Thác Datanla', 'Place 3', 'assets/images/big1.png'),
      Travel('Langbiang', 'Place 4', 'assets/images/big2.jpeg'),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('Cẩm tú cầu', 'Place 5', 'assets/images/small1.png'),
      Travel('Hồ Xuân Hương', 'Place 6', 'assets/images/small2.png'),
      Travel('Poppy Farm', 'Place 7', 'assets/images/small3.png'),
      Travel('Đồi chè Cầu Đất', 'Place 8', 'assets/images/small4.png'),
    ];
  }
}
