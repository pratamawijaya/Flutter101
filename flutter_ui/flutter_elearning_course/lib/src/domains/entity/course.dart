class Course {
  String name;
  String author;
  String desc;
  String cover;
  String duration;

  Course(
      {required this.name,
      required this.author,
      required this.desc,
      required this.cover,
      required this.duration});

  static List<Course> generateCourses() {
    return [
      Course(
        name: "Belajar Dasar UX Design",
        author: "Dicoding",
        desc: "Belajar membuat user experience yang menarik & menyenangkan",
        cover:
            "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:belajar_dasar_ux_design_logo_111021170300.png",
        duration: "23 Jam",
      ),
      Course(
        name: "Belajar Membuat Aplikasi Backend untuk Pemula",
        author: "Dicoding",
        desc:
            "Belajar membuat RESTFul Api dari HTTP Server, Routing, hingga aplikasi Backend",
        cover:
            "https://dicoding-web-img.sgp1.cdn.digitaloceanspaces.com/original/academy/dos:belajar_membuat_aplikasi_back_end_untuk_pemula_dengan_google_cloud_logo_261021104141.png",
        duration: "45 Jam",
      ),
      Course(
        name: "Meniti Karir sebagai Software Developer",
        author: "Dicoding",
        desc:
            "Pelajari berbagai jalur yang tersedia sebagai software developer",
        cover:
            "https://d17ivq9b7rppb3.cloudfront.net/original/academy/meniti_karier_sebagai_software_developer_logo_230421132747.jpg",
        duration: "7 Jam",
      ),
      Course(
        name: "Pengenalan Logika Pemrograman",
        author: "Dicoding",
        desc:
            "Pelajari Logika dasar dalam pemrograman dimulai dari jenis-jenis logika pemrograman",
        cover:
            "https://d17ivq9b7rppb3.cloudfront.net/original/academy/pengenalan_ke_logika_pemrograman_programming_logic_101_logo_230421133238.jpg",
        duration: "7 Jam",
      ),
    ];
  }
}
