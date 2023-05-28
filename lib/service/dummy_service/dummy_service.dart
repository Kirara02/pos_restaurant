import 'package:hyper_ui/service/product_service/product_service.dart';
import 'package:hyper_ui/service/table_service/table_service.dart';

class DummyService {
  //Buatlah 5 data List<Map<String, dynamic>> data dari minuman
  List<Map<String, dynamic>> productList = [
    {
      "id": 1,
      "photo":
          "https://images.unsplash.com/photo-1581184953963-d15972933db1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=665&q=80",
      "product_name": "Nasi Goreng",
      "price": 25000.0,
      "category": "Makanan",
      "description":
          "Nasi yang digoreng dengan bumbu dan tambahan daging serta sayuran."
    },
    {
      "id": 2,
      "photo":
          "https://images.unsplash.com/photo-1644288232801-2b40ff99d54f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=327&q=80",
      "product_name": "Sate Ayam",
      "price": 20000.0,
      "category": "Makanan",
      "description":
          "Potongan daging ayam yang ditusuk dan dibakar dengan bumbu kacang khas Indonesia."
    },
    {
      'id': 3,
      'photo':
          'https://images.unsplash.com/photo-1677921755291-c39158477b8e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      'product_name': 'Rendang',
      'price': 40000.0,
      'category': 'Makanan',
      'description':
          'Daging sapi yang dimasak dalam bumbu rempah-rempah khas Indonesia hingga empuk dan beraroma harum.'
    },
    {
      "id": 4,
      "photo":
          "https://images.unsplash.com/photo-1572656631137-7935297eff55?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
      "product_name": "Soto Ayam",
      "price": 22000.0,
      "category": "Makanan",
      "description":
          "Sup ayam dengan kuah kuning dan tambahan mie, tauge, dan daun seledri."
    },
    {
      "id": 5,
      "photo":
          "https://images.unsplash.com/photo-1644083152667-2c78739e882a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "product_name": "Bakso",
      "price": 15000.0,
      "category": "Makanan",
      "description":
          "Bola-bola daging yang terbuat dari campuran daging sapi, tepung tapioka, dan bumbu."
    },
    {
      "id": 6,
      "photo":
          "https://images.unsplash.com/photo-1565355857989-333dff0b3dc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw5NjA2MTcyfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
      "product_name": "Nasi Padang",
      "price": 30000.0,
      "category": "Makanan",
      "description":
          "Nasi dengan berbagai macam lauk seperti rendang, gulai ayam, sayur nangka, dan sambal."
    },
    {
      "id": 7,
      "photo":
          "https://images.unsplash.com/photo-1561626423-a51b45aef0a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "product_name": "Sate Padang",
      "price": 25000.0,
      "category": "Makanan",
      "description":
          "Potongan daging sapi yang dipanggang dengan bumbu khas Padang."
    },
    {
      "id": 8,
      "photo":
          "https://images.unsplash.com/photo-1651592109601-16aaebbf59f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      "product_name": "Pempek",
      "price": 18000.0,
      "category": "Makanan",
      "description":
          "Makanan khas Palembang yang terbuat dari ikan yang digiling dan dicampur dengan tepung sagu."
    },
    {
      "id": 9,
      "photo":
          "https://images.unsplash.com/photo-1680675494363-75bbf9838a09?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "product_name": "Mie Goreng",
      "price": 20000.0,
      "category": "Makanan",
      "description":
          "Mie yang digoreng dengan bumbu dan tambahan daging serta sayuran."
    },
    {
      'id': 10,
      'photo':
          'https://images.unsplash.com/photo-1658218615125-00be0c916735?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      'product_name': 'Pecel Lele',
      'price': 25000.0,
      'category': 'Makanan',
      'description':
          'Ikan lele yang digoreng garing disajikan dengan sambal pecel dan nasi.'
    }
  ];

  generate() async {
    for (var item in productList) {
      await ProductService().create(
          photo: item['photo'],
          product_name: item['product_name'],
          price: item['price'],
          category: item['category'],
          description: item['description']);
    }
  }

  generateTable() async {
    await TableService().deleteAll();
    for (var i = 1; i <= 20; i++) {
      await TableService().create(
        tableNumber: "$i",
        orderIndex: i,
      );
    }
  }
}
