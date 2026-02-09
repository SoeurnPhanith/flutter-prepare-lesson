class Products {

  final String name;
  final int qty; 
  final double price;
  final String desc; 
  final String images;

  Products({
    required this.name,
    required this.qty,
    required this.price,
    required this.desc,
    required this.images
  });
}

List<Products> productsList = [
  Products(
    name: "iPhone 15 Pro",
    qty: 10,
    price: 1299.00,
    desc:
        "The iPhone 15 Pro features a powerful A17 Pro chip, delivering exceptional performance "
        "for gaming, photography, and daily tasks. Its titanium body makes the phone lighter "
        "and more durable, while the advanced camera system captures stunning photos and videos "
        "in any lighting condition.",
    images: "assets/images/iphone15.png",
  ),
  Products(
    name: "Samsung Galaxy S24",
    qty: 15,
    price: 1099.00,
    desc:
        "Samsung Galaxy S24 is designed with cutting-edge AI technology to enhance photography "
        "and productivity. The phone offers a vibrant display, smooth performance, and a long-lasting "
        "battery, making it perfect for both work and entertainment.",
    images: "assets/images/s24.png",
  ),
  Products(
    name: "Xiaomi 14",
    qty: 20,
    price: 799.00,
    desc:
        "Xiaomi 14 combines flagship performance with an elegant design. Featuring a Leica camera "
        "system, it delivers professional-quality photos. The device is powered by a fast processor "
        "and optimized software for smooth multitasking.",
    images: "assets/images/xoimi14.png",
  ),
  Products(
    name: "MacBook Air M2",
    qty: 5,
    price: 1399.00,
    desc:
        "MacBook Air with M2 chip provides outstanding speed and efficiency in a thin and lightweight "
        "design. Ideal for students and professionals, it handles everyday tasks, creative work, "
        "and multitasking with ease while offering all-day battery life.",
    images: "assets/images/mac.png",
  ),
  Products(
    name: "Asus Gaming Laptop",
    qty: 7,
    price: 1599.00,
    desc:
        "This Asus gaming laptop is built for high performance gaming and intensive workloads. "
        "Equipped with powerful RTX graphics and advanced cooling, it ensures smooth gameplay "
        "and stable performance even during long gaming sessions.",
    images: "assets/images/rog.png",
  ),
  Products(
    name: "Apple Watch Series 9",
    qty: 25,
    price: 499.00,
    desc:
        "Apple Watch Series 9 helps you stay connected and track your health throughout the day. "
        "It features advanced fitness monitoring, heart rate tracking, and seamless integration "
        "with your iPhone for notifications and apps.",
    images: "assets/images/watch.png",
  ),
  Products(
    name: "AirPods Pro",
    qty: 30,
    price: 249.00,
    desc:
        "AirPods Pro deliver immersive sound with active noise cancellation and transparency mode. "
        "Designed for comfort, they provide a secure fit and excellent audio quality for music, "
        "calls, and daily use.",
    images: "assets/images/airPort.png",
  ),
];

