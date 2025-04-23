import 'booking.dart';
import 'guest.dart';
import 'hotel.dart';
import 'room.dart';

void main() {
  Hotel hotel = Hotel("Skyline Inn", "Downtown");

  Room room101 = Room(101, "Single", 100.0);
  Room room102 = Room(102, "Double", 150.0);
  hotel.addRoom(room101);
  hotel.addRoom(room102);

  Guest guest = Guest("Alice", "alice@example.com");

  DateTime checkIn = DateTime(2025, 5, 1);
  DateTime checkOut = DateTime(2025, 5, 5);

  try {
    Booking booking = guest.makeBooking(room101, checkIn, checkOut);
    booking.confirmPayment(room101.price);
    print("Booking confirmed for ${guest.name} in Room ${room101.roomNumber}.");
  } catch (e) {
    print(e);
  }
} 