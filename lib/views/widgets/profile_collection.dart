import '../../ui.dart';
import 'app_category_tile.dart';

class ProfileCollection extends StatelessWidget {
  const ProfileCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text(
                'Collection',
                style: context.primaryTextTheme.headline5
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Icon(
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
          children: <Widget>[
            RageOutlinedButton(
              onPressed: () {},
              height: 38,
              width: 165,
              child: const Text('Load more'),
            ),
            RageOutlinedButton(
              onPressed: () {},
              height: 32,
              width: 135,
              borderRadius: 34,
              child: const Text('3D Collections'),
            ),
          ],
        ),
      ],
    );
  }
}
