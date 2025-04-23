import 'booking.dart';
import 'room.dart';

class Guest {
  String name;
  String email;

  Guest(this.name, this.email);

  Booking makeBooking(Room room, DateTime checkIn, DateTime checkOut) {
    if (room.isAvailable(checkIn, checkOut)) {
      Booking booking = Booking(this, room, checkIn, checkOut);
      room.bookings.add(booking);
      return booking;
    } else {
      throw Exception('Room is not available for the selected dates.');
    }
  }
}