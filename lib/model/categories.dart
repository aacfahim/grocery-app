class Categories {
  String? type, img;

  Categories(this.type, this.img);

  static List<Categories> getCategories() {
    return [
      Categories("Dairy & Eggs",
          "https://t4.ftcdn.net/jpg/00/78/39/25/360_F_78392550_0azqO8s1wBexN0q9dm1L3QbbAX6rQoPH.jpg"),
      Categories("Beverages",
          "https://www.packagingdigest.com/sites/packagingdigest.com/files/AdobeStock_279692163_Editorial_Use_Only-Beverage-FTR-new.jpg"),
      Categories("Rice",
          "https://www.eatthis.com/wp-content/uploads/sites/4/2022/06/rice-varieties.jpg?quality=82&strip=1"),
      Categories("Lentil",
          "https://cdn.britannica.com/14/157214-050-3A82D9CD/kinds-lentils.jpg"),
    ];
  }
}
