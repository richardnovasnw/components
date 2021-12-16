import '../../ui.dart';

class LatestDropSwipe extends StatefulWidget {
  const LatestDropSwipe({Key? key}) : super(key: key);

  @override
  State<LatestDropSwipe> createState() => _LatestDropSwipeState();
}

class _LatestDropSwipeState extends State<LatestDropSwipe> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: .68,
  );
  int current = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      final int pos = _pageController.page!.round();
      if (current != pos) {
        setState(() {
          current = pos;
        });
      }
    });
  }

  int likeCount = -1;
  List<String> n = <String>[
    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Drops',
                style: context.primaryTextTheme.headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: n.length,
            itemBuilder: (BuildContext context, int index) {
              final bool active = index == current;
              return bannerCard(index, active);
            },
          ),
        ),
      ],
    );
  }

  AnimatedContainer bannerCard(int index, bool active) {
    final double size = active ? 16 : 0;
    return AnimatedContainer(
      curve: Curves.easeOutQuint,
      duration: const Duration(milliseconds: 500),
      padding: EdgeInsets.only(top: size),
      child: AspectRatio(
        aspectRatio: 0.71,
        child: Column(
          children: [
            AppContainer(
              width: 254,
              height: 300,
              borderRadius: 28,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg'),
                  fit: BoxFit.cover),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.favorite,
                  ),
                  Row(
                    children: [
                      Stack(
                        textDirection: TextDirection.ltr,
                        children: <Widget>[
                          ...n.take(3).map((String image) {
                            if (likeCount == 2) {
                              likeCount = 0;
                            } else {
                              likeCount++;
                            }

                            return Container(
                              height: 30.0,
                              width: 30.0,
                              margin: EdgeInsets.only(left: likeCount * 20),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(image),
                                ),
                              ),
                            );
                          }),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '33 more',
                          style: context.primaryTextTheme.subtitle2
                              ?.copyWith(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 254,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Inside Kings Cross',
                      style: context.primaryTextTheme.subtitle2
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    RageOutlinedButton(
                        onPressed: () {},
                        padding: 0,
                        borderRadius: 34,
                        width: 78,
                        height: 32,
                        child: Text('2.3 ETH')),
                  ],
                ),
                subtitle: Text('Nov 212, 2021',
                    style: context.primaryTextTheme.subtitle2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
