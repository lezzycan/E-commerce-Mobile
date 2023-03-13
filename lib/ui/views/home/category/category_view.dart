part of home_view.dart;

class CategoriesList extends ViewModelWidget<HomeModel> {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeModel model) {
    return SizedBox(
      height: 100.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          Category(imageLocation: EcmStrings.itemA, imageCaption: 'T-shirt', onPressed: () {  },),
           Category(
              imageLocation: EcmStrings.itemB, imageCaption: 'accessories', onPressed: () {  },),
          Category(imageLocation: EcmStrings.itemC, imageCaption: 'shoe', onPressed: () {  },),
          Category(imageLocation: EcmStrings.itemD, imageCaption: 'jacket', onPressed: () {  },),
          Category(imageLocation: EcmStrings.itemE, imageCaption: 'shirt', onPressed: () {  },),
          Category(imageLocation: EcmStrings.itemF, imageCaption: 'gown', onPressed: () {  },),
          Category(imageLocation: EcmStrings.itemG, imageCaption: 'jean', onPressed: () {  },)
         
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  final VoidCallback onPressed;
  const Category(
      {super.key, required this.imageLocation, required this.imageCaption, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 100,
        height: 300,
        child: ListTile(
          title: Image.asset(
            imageLocation,
            width: 100,
            height: 80,
            //fit: BoxFit.cover,
          ),
          subtitle: Align(
            alignment: Alignment.topCenter,
            child: Text(
              imageCaption,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.w700, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
