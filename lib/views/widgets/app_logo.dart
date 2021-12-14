import '../../ui.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 173,
      width: 153,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 124,
            width: 124,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1582769923195-c6e60dc1d8dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80'),
                    fit: BoxFit.cover)),),
            Container(
              height: 44,
                child: Text('iNFineT',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),))

        ],
      ),
    );
  }
}
class AppLogoHorizontal extends StatelessWidget {
  const AppLogoHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 160,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1582769923195-c6e60dc1d8dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8N3x8fGVufDB8fHx8&w=1000&q=80'),
                      fit: BoxFit.cover)),),
            Container(
              width: 120,
                child: Text('iNFineT',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),))

          ],
        ),
    );
  }
}

