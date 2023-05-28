import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TableService {
  create({
    required String tableNumber,
    required int orderIndex,
    String? orderId,
    String? status = 'Available',
  }) async {
    await FirebaseFirestore.instance.collection("tables").add({
      "owner_id": FirebaseAuth.instance.currentUser!.uid,
      "table_number": tableNumber,
      "order_index": orderIndex,
      "order_id": orderId,
      "status": status,
    });
  }

  deleteAll() async {
    var data = await FirebaseFirestore.instance
        .collection("tables")
        .where('owner_id', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get();
    for (var i = 0; i < data.docs.length; i++) {
      await FirebaseFirestore.instance
          .collection("tables")
          .doc(data.docs[i].id)
          .delete();
    }
  }
}
