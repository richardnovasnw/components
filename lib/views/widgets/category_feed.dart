import '../../ui.dart';

class CategoryFeedCard extends StatelessWidget {
  const CategoryFeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 335,
            width: 343,
            child: Column(
              children: <Widget>[
                Container(
                  height: 135,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 200,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'Xavier Yanko',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'bcscgkasdgaudgaufhsuifohwaodfwqhfdqouhdsjdhuwhfuwbfjwbfuwhbdjsbfus',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                                text: '2024',
                                style: const TextStyle(fontSize: 36),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ' ${context.strings.followers}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ]),
                          ),
                          RageOutlinedButton(
                             
                              onPressed: () {},
                              child: Text(context.strings.follow))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 115,
              left: 70,
              child: Container(
                height: 40,
                width: 204,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(51)),
                child: Center(
                  child: Text(
                    context.strings.seeCreation,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
