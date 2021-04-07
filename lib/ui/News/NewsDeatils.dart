import 'package:birel_mobil/modal/News.dart';
import 'package:flutter/material.dart';
import 'package:birel_mobil/consts/Colors.dart' as colors;

class NewsDetailsPage extends StatelessWidget {
  News news;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.BACKGROUND_GRAY,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: colors.COLOR_ACCENT,
            expandedHeight: 220,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/news_1.jpg",
                fit: BoxFit.fill,
              ),
              title: Text("Lorem Ipsum Dolor Sit Amet"),
            ),
            floating: true,
            snap: false,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis placerat porttitor. Sed tristique ipsum vel metus aliquam, iaculis condimentum orci aliquet. Cras pharetra quam felis, nec sagittis mi porttitor eget. Mauris dignissim mi justo, mattis malesuada nisi lobortis eu. In sit amet eros finibus, finibus sem at, mollis nulla. Vivamus venenatis et nisi vitae posuere. Suspendisse porttitor magna cursus fermentum placerat. \n \n Curabitur efficitur diam libero, id egestas magna suscipit id. In hac habitasse platea dictumst. Sed nec lorem felis. Nulla non arcu sollicitudin, volutpat metus id, scelerisque turpis. Aenean in urna scelerisque, porttitor lectus scelerisque, mollis nulla. Cras sagittis velit sit amet urna maximus iaculis. Proin est elit, tincidunt eget blandit a, \n \n feugiat ac neque. Integer sit amet vehicula diam, quis consectetur orci. Mauris scelerisque scelerisque sapien, ut eleifend diam facilisis nec. Ut in auctor leo. Cras sollicitudin pellentesque ipsum, vitae feugiat odio consequat a. Quisque ac ex dui. Aliquam quis ipsum ipsum. Duis ornare in nunc a feugiat. Sed rhoncus eleifend metus eget pretium. Praesent vehicula, justo et fermentum sagittis, ex est pretium est, eget semper velit lorem sed elit. \n\nPhasellus rhoncus et risus ac ultricies. Integer lorem risus, suscipit in mauris ut, lobortis vestibulum dui. Aliquam laoreet, sem id auctor mattis, nulla velit lacinia magna, et fermentum orci enim vel sem. Etiam sit amet neque finibus, rhoncus dolor sit amet, porttitor mi. Donec vulputate mi non enim commodo volutpat. Quisque gravida sit amet est eget fermentum. Curabitur vel libero nec orci aliquam luctus. Vivamus sapien dolor, fermentum ut \n\nlectus eget, rutrum tempus tortor. Suspendisse posuere ante vitae tristique eleifend. Ut et convallis felis, nec egestas lorem. Aliquam volutpat cursus posuere. Nam pulvinar neque nunc, quis dignissim elit posuere a. Sed quis lacus cursus, fringilla ante et, aliquam odio. Integer lobortis dui sit amet ante porta consequat. Curabitur eu aliquam est, eu facilisis lorem. Pellentesque placerat leo at molestie vulputate. Vestibulum iaculis vestibulum mattis. Aenean eget pharetra magna, non rutrum nulla. Pellentesque varius at nisi sit amet cursus. Vivamus quis suscipit lorem, ac vulputate dolor. Donec auctor ligula felis, sit amet consectetur augue ultricies mollis. In hac habitasse platea dictumst. Donec ut eros nec magna pretium mattis non eget orci. In vulputate nibh ac diam facilisis mattis. Nam varius dolor sed nisl aliquet, quis pellentesque nisl egestas. Phasellus vestibulum risus eros, semper dictum dolor faucibus eu. Ut velit dolor, venenatis a lacinia at, gravida vitae est. Nam quis elementum lectus, ac porttitor metus. Phasellus dapibus est non purus commodo condimentum. Sed eu gravida dolor, at interdum enim. Duis leo diam, pellentesque id pulvinar volutpat, efficitur non erat. Nam consequat tempor diam et mattis. Nam nisl sapien, luctus eget congue et, sollicitudin sed justo. Sed semper nisl a diam aliquet sollicitudin. Vivamus ut enim massa. Nulla consectetur feugiat leo ut consequat. Ut velit dolor, venenatis a lacinia at, gravida vitae est. Nam quis elementum lectus, ac porttitor metus. Phasellus dapibus est non purus commodo condimentum. Sed eu gravida dolor, at interdum enim. Duis leo diam, pellentesque id pulvinar volutpat, efficitur non erat. Nam consequat tempor diam et mattis. Nam nisl sapien, luctus eget congue et, sollicitudin sed justo. Sed semper nisl a diam aliquet sollicitudin. Vivamus ut enim massa. Nulla consectetur feugiat leo ut consequat.",
                style: TextStyle(color: colors.TEXT_GRAY),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
