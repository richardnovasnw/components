import '../../ui.dart';

class GallerySubCard extends StatelessWidget {
  const GallerySubCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: 107,
        width: 93,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://image.shutterstock.com/image-photo/old-brick-black-color-wall-260nw-1605128917.jpg'),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Gallery',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
