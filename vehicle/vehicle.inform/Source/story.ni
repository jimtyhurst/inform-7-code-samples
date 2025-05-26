"Vehicle" by Jim Tyhurst

Include Modified Exit by Emily Short.
[https://github.com/i7/extensions/blob/10.1/Emily%20Short/Modified%20Exit-v6.i7x]
Include Keyword Interface by Aaron Reed.
[https://github.com/i7/extensions/blob/10.1/Aaron%20Reed/Keyword%20Interface-v9.i7x]

SmartPark is a room. It is proper-named.
The description of SmartPark is "Many cars are parked in this high-rise parking lot downtown. Exit to [Third Ave] to the [east]."
In SmartPark is a vehicle called the van.
The description of the van is "The van has seen better days."

Third Ave is a room.
The description of Third Ave is "SW 3rd Ave is a one-way street. Go [south] to [Taylor St] or [west] to enter the [SmartPark] parking structure."
Third Ave is east of SmartPark.

Taylor St is a room.
The description of Taylor St is "Go [west] to [Tenth Ave] or [north] to [Third Ave]."
Taylor St is south of Third Ave.

Tenth Ave is a room.
The description of Tenth Ave is "Enter [the Central Library] to the [west]".
Tenth Ave is west of Taylor St.

The Central Library is a room.
The description of the Central Library is "The Central Library was built in 1913. [Tenth Ave] is to the [east]."
The Central Library is west of Tenth Ave.

Check going to the Central Library:
	If the player is in the van:
		say "You cannot drive [the van] into [the library]!" instead.
		
After going to the Central Library:
	say "You love the view of that massive central staircase as you enter [the Central Library].";
	continue the action.

[Expects you can enter and exit the van. You *cannot* enter the library with the van.]
Test happy-path with "get in van / e / s / w / w / get out of van / w / e".
