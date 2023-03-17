class UserModel {
  String name;
  List<String> message;
  String photo;
  List<String> userMessage;

  UserModel(
      {required this.message,
      required this.name,
      required this.userMessage,
      required this.photo});
}

List<UserModel> userList = [
  UserModel(
      message: ["halo saya jonas", "Senang bertemu"],
      userMessage: ['Hallo jonas', 'Senang Bertemu dengan anda'],
      name: "Jonas",
      photo:
          "https://media.discordapp.net/attachments/1076057192945434624/1086164221764575302/photo-1500648767791-00dcc994a43e.png?width=447&height=671"),
  UserModel(
      message: ["Bagaimana hari ini", 'Mending makan dulu', "Selesaikan dulu"],
      userMessage: ['Baik', 'Saya sudah makan', "baik akan saya selesaikan"],
      name: "Joko",
      photo:
          "https://media.discordapp.net/attachments/1076057192945434624/1086164269613203546/photo-1499996860823-5214fcc65f8f.png?width=539&height=671"),
  UserModel(
      message: [
        "halo saya Hans",
        "Senang bertemu",
        'Apakah anda mengikuti kegiatan itu',
        'bagaimana kalo kita berangkat bareng?',
        'di alun alun kota'
      ],
      userMessage: [
        'Hallo hans',
        'Senang Bertemu dengan anda',
        'iya saya ikut',
        'boleh aja, kamu mau di jemput dimana?',
        'oke siap'
      ],
      name: "Hans",
      photo:
          "https://media.discordapp.net/attachments/1076057192945434624/1086183370763030538/photo-1463453091185-61582044d556.png"),
  UserModel(
      message: ["halo saya brams", "Senang bertemu"],
      userMessage: ['Hallo brams', 'Senang Bertemu dengan anda'],
      name: "Brams",
      photo:
          "https://media.discordapp.net/attachments/1076057192945434624/1086183428417916928/5Kgaq.png?width=671&height=671"),
  UserModel(
      message: ["halo saya john", "Senang bertemu"],
      userMessage: ['Hallo john', 'Senang Bertemu dengan anda'],
      name: "John",
      photo:
          "https://media.discordapp.net/attachments/1076057192945434624/1086183504280301588/d2nqynw-af694fd2-e1ba-4e9c-badb-630a48474599.png"),
];
