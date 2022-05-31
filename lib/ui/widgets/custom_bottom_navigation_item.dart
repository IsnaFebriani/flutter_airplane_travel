part of 'widgets.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavigationItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: isSelected ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
