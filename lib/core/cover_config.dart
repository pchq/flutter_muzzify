/// путь к картинкам артистов и альбомов
class CoversConfig {
  static const _endpoint = 'https://api.napster.com/imageserver/v2/';

  static String path(Cover cover, String id) {
    switch (cover) {
      case Cover.artistSm:
        return '${_endpoint}artists/$id/images/150x100.jpg';

      case Cover.artistLg:
        return '${_endpoint}artists/$id/images/633x422.jpg';

      case Cover.albumSm:
        return '${_endpoint}albums/$id/images/70x70.jpg';

      case Cover.albumLg:
        return '${_endpoint}albums/$id/images/170x170.jpg';
    }
  }
}

enum Cover {
  /// маленькая картинка артиста
  artistSm,

  /// большая картинка артиста
  artistLg,

  /// маленькая картинка альбома
  albumSm,

  /// большая картинка альбома
  albumLg,
}
