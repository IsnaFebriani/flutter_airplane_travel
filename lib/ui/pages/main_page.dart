part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                isSelected: true,
                imageUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customBottomNavigation(),
        ],
      ),
    );
  }
}
