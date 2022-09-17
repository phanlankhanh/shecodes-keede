class Travel {
  String name;
  String location;
  String url;

  Travel(this.name, this.location, this.url);

  static List<Travel> generateTravelBlog() {
    return [
      Travel('Place 1', 'Place 1', 'assets/images/big1.png'),
      Travel('Place 2', 'Place 2', 'assets/images/big1.png'),
      Travel('Place 3', 'Place 3', 'assets/images/big2.png'),
      Travel('Place 4', 'Place 4', 'assets/images/big2.png'),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel('Place 5', 'Place 5', 'assets/images/small1.png'),
      Travel('Place 6', 'Place 6', 'assets/images/small2.png'),
      Travel('Place 7', 'Place 7', 'assets/images/small3.png'),
      Travel('Place 8', 'Place 8', 'assets/images/small4.png'),
    ];
  }
}
