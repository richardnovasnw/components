import 'package:infinet/views/widgets/app_category_tile.dart';

import '../../ui.dart';

class ProfileCollection extends StatelessWidget {
  const ProfileCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Collection',
                style: context.primaryTextTheme.headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.minimize,
                color: Colors.white,
              )
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              childAspectRatio: 0.83),
          itemBuilder: (BuildContext context, int i) {
            return const AppCategoryTile(text: 'text');
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RageOutlinedButton(
              onPressed: () {},
              height: 38,
              width: 165,
              child: Text('Load more'),
            ),
            RageOutlinedButton(
              onPressed: () {},
              height: 32,
              width: 135,
              borderRadius: 34,
              child: Text('3D Collections'),
            ),
          ],
        ),
      ],
    );
  }
}
