import 'package:infinet/views/widgets/Latest_drop_swipe.dart';
import 'package:infinet/views/widgets/app_card_tile.dart';
import 'package:infinet/views/widgets/footer.dart';
import 'package:infinet/views/widgets/profile_collection.dart';
import 'package:infinet/views/widgets/select_date.dart';


import '../ui.dart';
import 'auth/sign_up.dart';
import 'widgets/add_tag_module.dart';
import 'widgets/app_category_tile.dart';
import 'widgets/profile_contact_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: const Center(
        child: SignUp(),
      ),
    );
  }
}
