class Card3D {
  final String title;
  final String author;
  final String image;

  const Card3D({
    required this.title,
    required this.author,
    required this.image,
  });
}

const _basePath = 'assets/3d_cards';
const card3DList = [
  Card3D(
      title: 'Em mới là người yêu anh',
      author: 'Min',
      image: '$_basePath/1.jpeg'),
  Card3D(title: 'Vì yêu cứ đâm đầu', author: 'Min', image: '$_basePath/2.jpeg'),
  Card3D(
      title: 'Trên tình bạn dưới tình yêu',
      author: 'Min',
      image: '$_basePath/3.jpeg'),
  Card3D(title: 'Có em chờ', author: 'Min', image: '$_basePath/4.jpeg'),
  Card3D(
      title: 'Đừng yêu nữa em mệt rồi',
      author: 'Min',
      image: '$_basePath/5.jpeg'),
];
