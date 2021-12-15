import '../../ui.dart';

class UserFeedCard extends StatelessWidget {
  const UserFeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 0.65,
          child: AppCard(
            borderRadius: 32,
            color: Colors.white12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: AspectRatio(
                    aspectRatio: 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/e6/f8/a3/e6f8a3a92aecb36a362521332f0bcf1d.jpg'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Color',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: const AppCircleAvatar(
                    imageUrl:
                        'https://i.pinimg.com/564x/e6/f8/a3/e6f8a3a92aecb36a362521332f0bcf1d.jpg',
                    radius: 26,
                  ),
                  title: const Text(
                    'Color',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle:
                      Text('Color', style: context.primaryTextTheme.bodyText1),
                  trailing: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 5.35,
          child: AppCard(
              color: Colors.white12,
              borderRadius: 51,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    context.strings.soldFor,
                    style: context.primaryTextTheme.headline6,
                  ),
                  Text(
                    '200  ${context.strings.matic}',
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              )),
        )
      ],
    );
  }
}
