import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  create({
    required String photo,
    required String product_name,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").add({
      "owner_id": FirebaseAuth.instance.currentUser!.uid,
      "photo": photo,
      "product_name": product_name,
      "price": price,
      "category": category,
      "description": description,
    });
  }

  update({
    required String id,
    required String photo,
    required String product_name,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").doc(id).update({
      "owner_id": FirebaseAuth.instance.currentUser!.uid,
      "photo": photo,
      "product_name": product_name,
      "price": price,
      "category": category,
      "description": description,
    });
  }

  delete(String id) async {
    await FirebaseFirestore.instance.collection("products").doc(id).delete();
  }
}
