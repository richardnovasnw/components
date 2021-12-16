import '../../ui.dart';

class AppCardTile extends StatelessWidget {
  const AppCardTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 164,
          width: 342,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
                  ),
                  fit: BoxFit.fill)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.notifications)),
              ),
              Container(
                height: 82,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.grey.withOpacity(0.5),
                  Colors.blueGrey.withOpacity(0.5)
                ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(context.strings.updated),
                        const Text('june 4, 2021'),
                      ],
                    ),
                    Container(
                      height: 32,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: <Color>[Colors.grey, Colors.blueGrey])),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              context.strings.gallery,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Icon(Icons.add)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
