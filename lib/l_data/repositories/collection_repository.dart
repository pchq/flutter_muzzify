import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/l_domain/repositories/i_collection_repository.dart';
import '/models/track.dart';

class CollectionRepository implements ICollectionRepository {
  final FirebaseAuth firebaseAuth;

  CollectionRepository({
    required this.firebaseAuth,
  }) {
    Firebase.initializeApp();
  }

  CollectionReference get _tracksDb {
    if (firebaseAuth.currentUser == null) throw FirebaseAuthException(code: 'Unauth');

    final curUser = firebaseAuth.currentUser!;
    return FirebaseFirestore.instance.collection('users').doc(curUser.uid).collection('tracks');
  }

  @override
  Future<void> add(Track track) async {
    await _tracksDb.doc(track.id).set({
      '_timestamp': DateTime.now().microsecondsSinceEpoch,
      ...track.toJson(),
    });
  }

  @override
  Future<void> remove(Track track) async {
    await _tracksDb.doc(track.id).delete();
  }

  @override
  Stream<List<Track>> getAll({required bool newFirst}) async* {
    final snapshot = _tracksDb.orderBy('_timestamp', descending: newFirst).snapshots();

    yield* snapshot.map<List<Track>>(
      (event) => event.docs
          .map(
            (e) => Track.fromJson(e.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Future<bool> checkTrack(Track track) async {
    final snapshot = await _tracksDb.doc(track.id).get();
    return snapshot.exists;
  }
}
