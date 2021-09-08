class HomeTopEntity {
  final String id;
  final String title;
  final String groupTitle;
  final String imageUrl;

  HomeTopEntity({
    required this.id,
    required this.title,
    required this.groupTitle,
    required this.imageUrl,
  });
}

class HomeEntity {
  final List<HomeItemEntity> items;

  const HomeEntity({required this.items});
}

class HomeItemEntity {
  final String id;
  final String imageUrl;
  final String title;
  final String desc;

  const HomeItemEntity({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.desc,
  });
}
