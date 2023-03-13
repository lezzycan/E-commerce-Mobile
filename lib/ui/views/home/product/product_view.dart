// ignore_for_file: prefer_typing_uninitialized_variables, camel_case_types

part of home_view.dart;

class Product extends ViewModelWidget<HomeModel> {
  Product({Key? key}) : super(key: key);

  var productList = [
    {
      "name": "Blazzer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": "\$120",
      "new_price": "\$80"
    },
    {
      "name": "RED dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": "\$100",
      "new_price": "\$50"
    },
    {
      "name": "Gown",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": "\$200",
      "new_price": "\$150"
    },
    {
      "name": "Hills",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": "\$250",
      "new_price": "\$100"
    },
    {
      "name": "pants",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": "\$250",
      "new_price": "\$100"
    }
  ];
  @override
  Widget build(BuildContext context, HomeModel viewModel) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      itemCount: productList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return Single_prod(
          model: viewModel,
          prodName: productList[index]['name'].toString(),
          proOldPrice: productList[index]['old_price'].toString(),
          prodImage: productList[index]['picture'].toString(),
          prodNewPrice: productList[index]['new_price'].toString(),
        );
      },
    );
  }
}

class Single_prod extends StatelessWidget {
  final String prodName;
  final String proOldPrice;
  final String prodImage;
  final String prodNewPrice;
  final HomeModel model;
  const Single_prod(
      {super.key,
      required this.prodName,
      required this.proOldPrice,
      required this.prodImage,
      required this.prodNewPrice,
      required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Hero(
        tag: prodName,
        child: Material(
            child: InkWell(
          onTap: () {
              model.navigateToPage(prodName, proOldPrice, prodImage, prodNewPrice);  
          
          },
          child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(prodName),
                  minLeadingWidth: 80.0,
                  title: Text(prodNewPrice),
                  horizontalTitleGap: 20.0,
                  subtitle: Text(
                    proOldPrice,
                    style:
                        const TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prodImage,
                fit: BoxFit.cover,
              )),
        )),
      ),
    );
  }
}
