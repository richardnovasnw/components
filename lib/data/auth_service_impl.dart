import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:infinet/core/services/auth_service.dart';
import 'package:infinet/model/users.dart';

class AuthServiceImpl implements AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  Future<void> forgetPassword({required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  Future<Users?> signIn({required String email, required String password}) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password);
      final Query<Map<String, dynamic>> user = FirebaseFirestore.instance
          .collection('register')
          .where('uid', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
          .limit(1);
      QuerySnapshot<Map<String, dynamic>> collection = await user.get();
      final BuiltList<Users?> list = collection.docs
          .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) {
        if (!doc.exists) {
          return null;
        }
        final Map<String, dynamic> data = doc.data();
        final results= Users.fromJson(data);
        print(results);
        return results;
      }).toBuiltList();
    }
    catch (e) {

      print(e.toString());
      return null;
    }
  }


  @override
  Future<void> signOut() async {
    await _auth.signOut();

  }

  @override
  Future<void> signUp({required String userName, required String email, required String password}) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((UserCredential value) {
        final DocumentReference<Map<String, dynamic>> ref =
        FirebaseFirestore.instance.collection('register').doc();
        ref.set(<String, dynamic>{
          'datetime': FieldValue.serverTimestamp(),
          'username': userName,
          'uid': FirebaseAuth.instance.currentUser!.uid,
        });
      }).then((Object? value) {
        if (FirebaseAuth.instance.userChanges() != null) {
          print(value);
        }
      });
    } catch (e) {
      print('error ${e}');
    }
  }

}