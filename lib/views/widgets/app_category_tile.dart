import '../../ui.dart';

class AppCategoryTile extends StatelessWidget {
  const AppCategoryTile({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 194,
        width: 166,
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://st.depositphotos.com/1010338/3142/i/600/depositphotos_31420279-stock-photo-death-in-the-hood-concept.jpg'),
                fit: BoxFit.cover)),
        child: Container(
          alignment: Alignment.center,
          color: Colors.black54,
          height: 87,
          width: 166,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
