import '../../ui.dart';

class DropFeedCard extends StatelessWidget {
  const DropFeedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 394,
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
                  padding: const EdgeInsets.all(24),
                  height: 259,
                  width: double.infinity,
                  color: Colors.black87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Xavier Yanko',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const Text(
                        'bcscgkasdgaudgaufhsuifohwaodfwqhfdqouhdsjdhuwhfuwbfjwbfuwhbdjsbfusfghsuchbsubhc   jdfnwfiwj',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27)),
                                minimumSize: const Size(65, 28),
                                primary: Colors.transparent,
                                side: const BorderSide(color: Colors.white),
                              ),
                              onPressed: () {},
                              child: const Text(
                                '#color',
                                style: TextStyle(fontSize: 13),
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Geo-Point Sprint',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          RichText(
                            text: const TextSpan(
                                text: '1.00 ETH',
                                style: TextStyle(fontSize: 16),
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: ' \$2.3435.32',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      const Text(
                        'June 21,2021 at 11:00am',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Positioned(
            top: 82,
            left: 220,
            child: AppCircleAvatar(
              radius: 50,
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
              borderWidth: 4.0,
            ),
          )
        ],
      ),
    );
  }
}
