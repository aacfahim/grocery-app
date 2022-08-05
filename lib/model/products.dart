class Products {
  String? name, desc, img;
  int? price;

  Products(this.name, this.desc, this.img, this.price);

  static List<Products> getProducts() {
    return [
      Products(
          "Red Apple",
          "1kg, India",
          "https://media.istockphoto.com/photos/red-delicious-apples-picture-id622795204?k=20&m=622795204&s=612x612&w=0&h=ZML1QAmIBvpm6XfQ5hlWR8an4wcFqdY65tdvRhZ9p7I=",
          220),
      Products(
          "Chicken",
          "1kg, with skin-boiler",
          "https://cdn.shopify.com/s/files/1/0276/5026/1040/products/1001131_1024x1024.png?v=1571740613",
          180),
      Products(
          "Mutton",
          "1kg",
          "https://chaldn.com/_mpimage/mutton-bone-in-khashi-50-gm-1-kg?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D74656&q=low&v=1",
          850),
      Products(
          "Rohu Fish",
          "1kg",
          "https://fishworld.live/wp-content/uploads/2021/09/Rohu-Fish-3.jpg",
          220),
      Products(
          "Hilsa Fish",
          "1kg",
          "https://upload.wikimedia.org/wikipedia/commons/d/d3/BHilsa123.jpg",
          300),
      Products(
          "Miniket Rice",
          "25kg",
          "https://chaderhut24.com/wp-content/uploads/2021/10/%E0%A6%86%E0%A6%A4%E0%A6%AA-%E0%A6%9A%E0%A6%BE%E0%A6%B2.jpg",
          2250),
    ];
  }
}
