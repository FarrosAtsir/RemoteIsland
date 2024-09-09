class KumpulanPulau {
  String nama;
  String lokasi;
  String deskripsi;
  String gambar;
  bool like;
  bool fav;

  KumpulanPulau({
    required this.nama,
    required this.lokasi,
    required this.deskripsi,
    required this.gambar,
    required this.like,
    required this.fav
  });
}

var kumpulanPulauList = [
  KumpulanPulau(
      nama: "Pulau Manimbora",
      lokasi: " Kalimantan Timur, Laut Sulawesi",
      deskripsi:
          "Pulau Manimbora, juga dikenal sebagai Pulau Spongebob oleh penduduk setempat, adalah pulau kecil yang terletak di perairan Laut Sulawesi, Kalimantan Timur. Dikelilingi oleh pantai berpasir putih dan air laut yang jernih, pulau ini memiliki keunikan berupa deretan batu karang yang menyerupai bentuk rumah nanas dari kartun Spongebob. Pulau ini sangat terpencil dan sering digunakan sebagai tempat berkemah dan memancing oleh para pelancong petualang.",
      gambar: "assets/manimbora.webp",
      like: false,
      fav: false),
      
  KumpulanPulau(
      nama: "Pulau Rani",
      lokasi: " Papua Barat, Kepulauan Raja Ampat",
      deskripsi:
          "Pulau Rani adalah salah satu pulau terpencil di gugusan Kepulauan Raja Ampat, Papua Barat. Pulau ini terkenal dengan keindahan alam bawah lautnya yang luar biasa, dengan terumbu karang yang masih sangat alami dan penuh warna. Selain itu, Pulau Rani juga memiliki hutan tropis yang lebat, menjadikannya tempat yang sempurna untuk ekowisata dan penelitian biodiversitas.",
      gambar: "assets/rani.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Biawak",
      lokasi: " Laut Jawa, Indramayu, Jawa Barat",
      deskripsi:
          "Pulau Biawak adalah pulau kecil yang terletak di Laut Jawa, dekat dengan pantai Indramayu, Jawa Barat. Pulau ini terkenal dengan populasi biawak yang banyak berkeliaran bebas di pulau ini, yang menjadi daya tarik utama. Pulau ini juga memiliki mercusuar tua yang dibangun pada zaman kolonial Belanda, serta terumbu karang yang indah untuk snorkeling dan menyelam.",
      gambar: "assets/biawak.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Bawah",
      lokasi: " Kepulauan Anambas, Kepulauan Riau",
      deskripsi:
          "Pulau Bawah adalah pulau terpencil yang merupakan bagian dari Kepulauan Anambas di Kepulauan Riau. Pulau ini menawarkan keindahan alam yang luar biasa dengan laguna yang tenang, pantai berpasir putih, dan air laut yang sangat jernih. Pulau Bawah sering disebut sebagai salah satu surga tersembunyi di Indonesia, ideal untuk mereka yang mencari ketenangan dan kedamaian dalam keindahan alam yang belum terjamah.",
      gambar: "assets/bawah.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Rondo",
      lokasi: " Sabang, Aceh",
      deskripsi:
          "Pulau Rondo adalah pulau paling utara di Indonesia, terletak di ujung barat laut Pulau Weh, Sabang, Aceh. Pulau ini menjadi titik terluar Indonesia dan berfungsi sebagai salah satu pulau perbatasan negara. Meskipun terpencil dan tidak berpenghuni, Pulau Rondo memiliki keindahan alam yang alami dengan perairan yang kaya akan kehidupan laut dan merupakan tempat favorit bagi para penyelam petualang.",
      gambar: "assets/rondo.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Amparo",
      lokasi: " Laut Sulawesi, Gorontalo",
      deskripsi:
          "Pulau Amparo adalah pulau kecil yang terletak di Laut Sulawesi, dekat Gorontalo. Pulau ini dikelilingi oleh hutan mangrove dan terumbu karang yang menakjubkan, menjadikannya tempat yang sempurna untuk snorkeling dan menyelam. Meskipun terpencil, Pulau Amparo menawarkan keindahan alam yang mempesona dan menjadi tempat pelarian bagi mereka yang mencari kedamaian di alam.",
      gambar: "assets/amparo.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Asu",
      lokasi: " Kepulauan Nias, Sumatra Utara",
      deskripsi:
          "Pulau Asu adalah salah satu pulau di Kepulauan Hinako, barat Pulau Nias, Sumatra Utara. Pulau ini dikenal di kalangan peselancar karena ombaknya yang tinggi dan konsisten, menjadikannya salah satu tempat terbaik untuk berselancar di Indonesia. Selain itu, Pulau Asu juga menawarkan pantai berpasir putih dan suasana yang sangat tenang, cocok untuk beristirahat dan menikmati keindahan alam.",
      gambar: "assets/asu.jpg",
      like: false,
      fav: false),
  KumpulanPulau(
      nama: "Pulau Siroktabe",
      lokasi: " Kepulauan Banyak, Aceh",
      deskripsi:
          "Pulau Siroktabe adalah salah satu pulau terpencil di Kepulauan Banyak, Aceh. Pulau ini hampir tidak berpenghuni dan dikelilingi oleh hutan tropis serta pantai-pantai yang indah. Dengan air laut yang jernih dan terumbu karang yang masih terjaga, Pulau Siroktabe menjadi tempat yang sempurna bagi para penyelam dan pecinta alam yang ingin menikmati keindahan laut dan hutan yang masih alami.",
      gambar: "assets/siroktabe.jpg",
      like: false,
      fav: false)
];
