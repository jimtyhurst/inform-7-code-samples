"get-in-vehicle-implicitly" by Jim Tyhurst

Include Modified Exit by Emily Short.
[https://github.com/i7/extensions/blob/10.1/Emily%20Short/Modified%20Exit-v6.i7x]

Portland is a room.
The description of Portland is "The City of Roses. You can fly [east] to [Chicago]."
Chicago is a room.
The description of Chicago is "The Windy City."
Chicago is east of Portland.

In Portland is a vehicle called a plane.
The plane is portable.
The description of the plane is "Flight 1693: PDX to ORD."

[
TODO: I want the player to get on the plane implicitly when going east from Portland to Chicago. This Try-clause seems to work, since I get on the plane, but then I get this error:
	You would have to get out of the plane first.
and the action is not completed to go east.
I tried a 'Check' rule, as well as a 'Before' rule. They both result in the same behavior.
The error occurs whether or not I include 'Modified Exit'.
]

Check going to Chicago:
	If player is in Portland and player is not in the plane:
		Try entering plane.

[Unexpected message: "You would have to get out of the plane first."
 **But**: You *are* put into the plane and can then go east on your next turn.]
Test implicit with "e / l / e / exit"

[It works fine if you get on the plane explicitly before going east, 
 although these verbs only work with the 'Modified Exit' extension.]
Test happy-path with "get on plane / e / get off plane / x plane"

[These verbs work even without the 'Modified Exit' extension.]
Test get-on with "enter plane / e / exit / x plane"

