class CardInfoCarousel {
  final int id;
  final String title;
  final String image;

  CardInfoCarousel({required this.image, required this.title, required this.id,});
  static List<CardInfoCarousel>getUser() {
      return <CardInfoCarousel>[
        CardInfoCarousel(id:1,title: 'Burgers', image: 'assets/list_categories/burgers.png',),
        CardInfoCarousel(id:2,title: 'Offers', image: 'assets/list_categories/offers.png',),
        CardInfoCarousel(id:3,title: 'Pizza', image: 'assets/list_categories/pizza.png',),
        CardInfoCarousel(id:4,title: 'Sushi', image: 'assets/list_categories/sushi.png',),
        CardInfoCarousel(id:5,title: 'Thai', image: 'assets/list_categories/thai.png',),
        CardInfoCarousel(id:6,title: 'Vegan', image: 'assets/list_categories/vegan.png',),
      ];
    }
}

class CardTopRated {
  final int id;
  final String title;
  final String rate_text;
  final String rate_count; //сделал через стринг
  final String more;
  final String image;
  final String delivery_time;

  CardTopRated({required this.image, required this.id,required  this.title,required  this.rate_text,required  this.rate_count,required  this.more,required  this.delivery_time});
  static List<CardTopRated>getUser() {
    return <CardTopRated> [
      CardTopRated(id: 1, title: 'Lombar Pizza', rate_text: '4.7 Excellent', rate_count: '(50+)', more: 'Pizza, Italian, Pasta, Salads', delivery_time: '35-55', image: 'assets/top_rated/Pizza.png',),
      CardTopRated(id: 1, title: 'Italian Pasta', rate_text: '5.0 Excellent', rate_count: '(50+)', more: 'Pizza, Italian, Pasta, Salads', delivery_time: '20-45', image: 'assets/top_rated/Pasta.png',),

    ];
  }
}
