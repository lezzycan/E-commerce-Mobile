part of home_view.dart;

class ProductDetails extends ViewModelWidget<HomeModel> {
  const ProductDetails(
      {super.key,
      required this.prodName,
      required this.proOldPrice,
      required this.prodImage,
      required this.prodNewPrice});
  final String prodName;
  final String proOldPrice;
  final String prodImage;
  final String prodNewPrice;

  @override
  Widget build(BuildContext context, HomeModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: EcmColors.primaryColor,
        elevation: 1.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          )
        ],
      ),
      body: ListView(
        children: [
          GridTile(
              child: Container(
                height: 300.h,
            color: EcmColors.lightBackgroundColor,
            child: Image.asset(prodImage),
          ))
        ],
      ),
    );
  }
}
