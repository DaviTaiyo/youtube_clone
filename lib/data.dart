class User {
  final String username;
  final String profileImage;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImage,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Vevo',
  profileImage:
      'https://yt3.googleusercontent.com/ytc/AL5GRJW6KzgWHa__xX959oWdWmbLYHfS3S_U6tom0hAYkn0=s176-c-k-c0x00ffffff-no-rj-mo',
  subscribers: '1k',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnail;
  final String duration;
  final DateTime timeStamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.timeStamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

final List<Video> videos = [
  Video(
      id: '123456',
      author: currentUser,
      title: 'Alan Walker - Faded',
      thumbnail: 'https://i.ytimg.com/vi/60ItHLz5WEA/maxresdefault.jpg',
      duration: '3:32',
      timeStamp: DateTime(2015, 12, 3),
      viewCount: '3,4 bi',
      likes: '26 mi',
      dislikes: '120'),
  Video(
      id: '654321',
      author: currentUser,
      title: 'ZAYN - Dusk Till Dawn (Official Video) ft. Sia',
      thumbnail: 'https://i.ytimg.com/vi/tt2k8PGm-TI/maxresdefault.jpg',
      duration: '5:37',
      timeStamp: DateTime(2017, 9, 7),
      viewCount: '1,9 bi',
      likes: '14 mi',
      dislikes: '120'),
  Video(
      id: '1367129',
      author: currentUser,
      title: 'The Weeknd - Blinding Lights (Official Audio)',
      thumbnail: 'https://i.ytimg.com/vi/fHI8X4OXluQ/maxresdefault.jpg',
      duration: '3:23',
      timeStamp: DateTime(2019, 11, 28),
      viewCount: '736 mi',
      likes: '5,82 mi',
      dislikes: '80'),
  Video(
      id: '1367129',
      author: currentUser,
      title: 'Oliver Tree & Robin Schulz - Miss You [Lyric Video]',
      thumbnail: 'https://i.ytimg.com/vi/3_j-YZP7RZg/maxresdefault.jpg',
      duration: '3:26',
      timeStamp: DateTime(2022, 10, 24),
      viewCount: '4,5 mi',
      likes: '66 mil',
      dislikes: '60'),
];

final List<Video> suggestedVideo = [
  Video(
      id: '123456',
      author: currentUser,
      title: 'Alan Walker - Faded',
      thumbnail: 'https://i.ytimg.com/vi/60ItHLz5WEA/maxresdefault.jpg',
      duration: '3:32',
      timeStamp: DateTime(2015, 12, 3),
      viewCount: '3,4 bi',
      likes: '26 mi',
      dislikes: '120'),
  Video(
      id: '654321',
      author: currentUser,
      title: 'ZAYN - Dusk Till Dawn (Official Video) ft. Sia',
      thumbnail: 'https://i.ytimg.com/vi/tt2k8PGm-TI/maxresdefault.jpg',
      duration: '5:37',
      timeStamp: DateTime(2017, 9, 7),
      viewCount: '1,9 bi',
      likes: '14 mi',
      dislikes: '120'),
  Video(
      id: '1367129',
      author: currentUser,
      title: 'The Weeknd - Blinding Lights (Official Audio)',
      thumbnail: 'https://i.ytimg.com/vi/fHI8X4OXluQ/maxresdefault.jpg',
      duration: '3:23',
      timeStamp: DateTime(2019, 11, 28),
      viewCount: '736 mi',
      likes: '5,82 mi',
      dislikes: '80'),
  Video(
      id: '1367129',
      author: currentUser,
      title: 'Oliver Tree & Robin Schulz - Miss You [Lyric Video]',
      thumbnail: 'https://i.ytimg.com/vi/3_j-YZP7RZg/maxresdefault.jpg',
      duration: '3:26',
      timeStamp: DateTime(2022, 10, 24),
      viewCount: '4,5 mi',
      likes: '66 mil',
      dislikes: '60'),
];
