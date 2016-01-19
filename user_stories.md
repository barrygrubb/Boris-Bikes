Person
Bike
Docking Station

Use
Release
See

Objects | Messages
--------|---------
Person | use_bike
Bike | check_bike
Docking Station | release_bike

Person --> release_bike --> Docking Station
Person --> check_bike --> Bike --> Person
Person --> use_bike --> Bike
