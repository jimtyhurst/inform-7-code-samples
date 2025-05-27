"get-in-vehicle-implicitly" by Jim Tyhurst

Include Modified Exit by Emily Short.
[https://github.com/i7/extensions/blob/10.1/Emily%20Short/Modified%20Exit-v6.i7x]

Portland is a room.
The description of Portland is "The City of Roses. You can go [east] to [Chicago] on a plane."
Chicago is a room.
The description of Chicago is "The Windy City."
Chicago is east of Portland.

The plane is a vehicle.
The plane is in Portland.
The description of the plane is "Flight 1693: PDX to ORD."

[I want the player to get on the plane implicitly when going east from Portland to Chicago.]
[Solution 1 (from Katie Casamento)]
[
Check going east:
	if player is in Portland and player is not in the plane:
		try entering plane;
		abide by the standard set going variables rule.
]
[Solution 2 (from Bart Massey)]
Check going east:
	If player is in Portland and player is not in the plane:
		Try entering plane;
		Try going east instead.

[Expects system puts you on the plane implicitly for this path.]
Test implicit with "east / exit".

[You can get on the plane explicitly before going east, 
 although these verbs only work with the 'Modified Exit' extension.]
Test get-on-off with "get on plane / east / get off plane".

[These verbs work even without the 'Modified Exit' extension.]
Test enter-exit with "enter plane / east / exit".

