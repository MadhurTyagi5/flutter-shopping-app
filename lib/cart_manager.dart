class CartManager {
  static final List<Map<String, dynamic>> cart = [];

  static void addItem(Map<String, dynamic> item) {
    cart.add(item);
  }

  static void removeItem(Map<String, dynamic> item) {
    cart.remove(item);
  }
}