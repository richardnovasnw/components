import '../../ui.dart';

class MemberTile extends StatelessWidget {
  const MemberTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 92,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const <Widget>[
          AppCircleAvatar(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/1200px-Image_created_with_a_mobile_phone.png',
            radius: 40,
          ),
          Text(
            'Name',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
