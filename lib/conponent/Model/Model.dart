class FakeDateCate {

  String text;
  FakeDateCate({required this.text});

  static List<FakeDateCate> tabmodel() => [ 
    FakeDateCate(text: "FastFood"),
    FakeDateCate(text: "drink"),
    FakeDateCate(text: "Icecream"),
    
    FakeDateCate(text: "Foodsea")

  ];
}
class FakeDate {
  String? image;
  String? title;
  String? suptitle;
  String? mumber;
  double price;
  String? category;
  FakeDate({this.category,this.image,this.mumber,required this.price,this.suptitle,this.title});

  Map<String , dynamic> toMap() => {'image':image,"title":title,'sumtitle':suptitle,'mumber':mumber,"price":price,"category":category };
  factory FakeDate.fromjson(Map<String, dynamic>json ) 
  => FakeDate(
    category: json["category"],
    image: json["image"],
    mumber: json["mumber"],
    price: json["price"],
    suptitle: json["sumtitle"],
    title: json["title"],

  );
}




List<FakeDate> foodclass = [
  FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food1.jpg",
      mumber: "2.3",
      price: 3.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),
  FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food1.jpg",
      mumber: "2.3",
      price: 3.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),
       FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food2.jpg",
      mumber: "2.3",
      price: 9.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),
       FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food3.jpg",
      mumber: "2.3",
      price: 9.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),
       FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food4.jpg",
      mumber: "2.3",
      price: 3.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),
       FakeDate(
    category: "FastFood",
      image:
          "lib/assets/Food5.jpg",
      mumber: "2.3",
      price: 6.44,
      suptitle: "Fast Food Pictures",
      title: "Fast Food"),

      // Fast food
      //
  FakeDate(
      image:
          "lib/assets/Drink1.jpg",
      mumber: "2.3",
      price: 5.44,
      category: "drink",
      suptitle: "Fast Food Pictures",
      title: "Fast drink"),
 FakeDate(
      image:
          "lib/assets/Drink2.jpg",
      mumber: "2.3",
      price: 4.44,
      category: "drink",
      suptitle: "Fast Food Pictures",
      title: "Fast drink"),
      FakeDate(
      image:
          "lib/assets/Drink3.jpg",
      mumber: "2.3",
      price: 1.99,
      category: "drink",
      suptitle: "Fast Food Pictures",
      title: "Fast drink"),
      FakeDate(
      image:
          "lib/assets/Drink4.jpg",
      mumber: "2.3",
      price: 7.44,
      category: "drink",
      suptitle: "Fast Food Pictures",
      title: "Fast drink"),
      FakeDate(
      image:
          "lib/assets/Drink.jpg",
      mumber: "2.3",
      price: 3.44,
      category: "drink",
      suptitle: "Fast Food Pictures",
      title: "Fast drink"),

      //Sea food


      FakeDate(
      image:
          "lib/assets/Sea1.jpg",
      mumber: "2.3",
      price: 7.44,
      category: "Foodsea",
      suptitle: "Fast Food Pictures",
      title: "Fast Foodsea"),
     FakeDate(
      image:
          "lib/assets/Sea2.jpg",
      mumber: "2.3",
      price: 3.44,
      category: "Foodsea",
      suptitle: "Fast Food Pictures",
      title: "Fast Foodsea"),
      FakeDate(
      image:
          "lib/assets/Sea4.jpg",
      mumber: "2.3",
      price: 5.44,
      category: "Foodsea",
      suptitle: "Fast Food Pictures",
      title: "Fast Foodsea"),
      FakeDate(
      image:
          "lib/assets/Sea5.jpg",
      mumber: "2.3",
      price: 6.54,
      category: "Foodsea",
      suptitle: "Fast Food Pictures",
      title: "Fast Foodsea"),
      FakeDate(
      image:
          "lib/assets/Sea5.jpg",
      mumber: "2.3",
      price: 6.99,
      category: "Foodsea",
      suptitle: "Fast Food Pictures",
      title: "Fast Foodsea"),
      //Icecrem

      FakeDate(
      image:
          "lib/assets/Icecream1.jpg",
      mumber: "2.3",
      price: 1.4,
      category: "Icecream",
      suptitle: "Icecrem",
      title: "Icecrem "),
     FakeDate(
      image:
          "lib/assets/Icecream2.jpg",
      mumber: "2.3",
      price: 1.44,
      category: "Icecream",
      suptitle: "Icecrem",
      title: "Icecrem "),
      FakeDate(
      image:
          "lib/assets/Icecream3.jpg",
      mumber: "2.3",
      price: 1.4,
      category: "Icecream",
      suptitle: "Icecrem",
      title: "Icecrem "),
      FakeDate(
      image:
          "lib/assets/Icecream4.jpg",
      mumber: "1.3",
      price: 1.94,
      category: "Icecream",
      suptitle: "Icecrem",
      title: "Icecrem "),
      FakeDate(
      image:
          "lib/assets/Icecream5.jpg",
      mumber: "2.3",
      price: 1.44,
      category: "Icecream",
      suptitle: "Fast Food Pictures",
      title: "Icecrem "),



  
];
