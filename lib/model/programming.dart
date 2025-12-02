class Programming {
  final int id;
  final String name;
  final String description;
  final String usage;

  Programming({
    required this.id,
    required this.name,
    required this.description,
    required this.usage,
  });
}

final List<Programming> languagesList = [
  Programming(
    id: 1,
    name: "Python",
    description: "Bahasa pemrograman tingkat tinggi yang populer karena sintaksisnya yang sederhana dan mudah dipahami.",
    usage: "Digunakan dalam pengembangan web, data science, machine learning, dan automasi.",
  ),
  Programming(
    id: 2,
    name: "JavaScript",
    description: "Bahasa yang digunakan untuk pengembangan web interaktif.",
    usage: "Digunakan untuk pengembangan sisi klien (client-side) dan server (server-side) menggunakan teknologi seperti Node.js.",
  ),
  Programming(
    id: 3,
    name: "Java",
    description: "Bahasa pemrograman berorientasi objek yang banyak digunakan dalam pengembangan aplikasi web dan aplikasi Android.",
    usage: "Sering digunakan dalam pengembangan sistem besar dengan prinsip 'write once, run anywhere'.",
  ),
  Programming(
    id: 4,
    name: "C++",
    description: "Bahasa pemrograman berbasis objek yang merupakan pengembangan dari bahasa C.",
    usage: "Digunakan untuk perangkat lunak yang membutuhkan performa tinggi, seperti game, perangkat lunak sistem, dan aplikasi berbasis grafis.",
  ),
  Programming(
    id: 5,
    name: "C#",
    description: "Dikembangkan oleh Microsoft dan digunakan untuk pengembangan aplikasi desktop, aplikasi web, dan game melalui platform .NET.",
    usage: "Sering digunakan dengan Unity untuk pengembangan game.",
  ),
  Programming(
    id: 6,
    name: "Ruby",
    description: "Bahasa pemrograman dinamis yang terkenal karena kemudahan dalam pengembangan aplikasi web menggunakan Ruby on Rails.",
    usage: "Menekankan prinsip 'developer happiness' dan produktivitas.",
  ),
  Programming(
    id: 7,
    name: "PHP",
    description: "Bahasa pemrograman server-side yang banyak digunakan untuk pengembangan situs web dinamis dan aplikasi web.",
    usage: "Sering digunakan dengan MySQL untuk pengembangan backend situs web.",
  ),
  Programming(
    id: 8,
    name: "Swift",
    description: "Bahasa pemrograman yang dikembangkan oleh Apple untuk membangun aplikasi iOS, macOS, watchOS, dan tvOS.",
    usage: "Dirancang untuk cepat dan aman dengan sintaksis modern.",
  ),
  Programming(
    id: 9,
    name: "Go (Golang)",
    description: "Dikembangkan oleh Google, terkenal dengan kinerjanya yang cepat dan sintaksis sederhana.",
    usage: "Sering digunakan dalam pengembangan aplikasi web dan sistem berskala besar.",
  ),
  Programming(
    id: 10,
    name: "Rust",
    description: "Bahasa pemrograman yang fokus pada keamanan dan kinerja tinggi.",
    usage: "Digunakan untuk aplikasi perangkat keras dan web assembly dengan kontrol memori tingkat rendah tanpa mengorbankan keamanannya.",
  ),
];