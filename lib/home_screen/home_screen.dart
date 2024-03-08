import 'package:project_2/consts/lists.dart';

import '../consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            color: lightGrey,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: whiteColor,
                hintText:searchAnyThing,
                hintStyle: TextStyle(color: textfieldGrey),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          
          // Swipers Brands
          
          VxSwiper.builder(
              aspectRatio: 16/9,
              autoPlay: true,
              height: 150,
              enlargeCenterPage: true,
              itemCount: slidersList.length, itemBuilder: (context, index) {
            return Image.asset(
              slidersList[index],
              fit: BoxFit.fitWidth,
            ).box.rounded.margin(EdgeInsets.symmetric(horizontal: 8)).clip(Clip.antiAlias).make();
          })
        ],
      ),),
    );
  }
}
