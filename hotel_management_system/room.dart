import 'booking.dart';

class Room {
  int roomNumber;
  String type;
  double price;
  List<Booking> bookings = [];

  Room(this.roomNumber, this.type, this.price);

  bool isAvailable(DateTime checkIn, DateTime checkOut) {
    for (var booking in bookings) {
      if (booking.overlaps(checkIn, checkOut)) {
        return false;
      }
    }
    return true;
  }
}
