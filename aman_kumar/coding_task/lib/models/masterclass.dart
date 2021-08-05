class Masterclass {
  final String title;
  final String? description;
  final String eventDate;
  final String eventStartTime;
  final String eventEndTime;
  final String author;
  final String authorDescription;
  final bool isExclusive;
  Masterclass({
    required this.title,
    this.description,
    required this.eventDate,
    required this.eventStartTime,
    required this.eventEndTime,
    required this.author,
    required this.authorDescription,
    this.isExclusive = false,
  });
}

final Masterclass yogaClass = Masterclass(
  title: 'Yoga in third trimester',
  description: 'For your baby\'s development',
  eventDate: '07 April',
  eventStartTime: '4:30pm',
  eventEndTime: '5:30pm',
  author: 'Dr. Tulika Mahajan',
  authorDescription: 'Face Yoga Expert',
  isExclusive: true,
);
