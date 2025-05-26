"numbered-streets" by Jim Tyhurst

[
(1) Note the extra period required at the end of the description of 5th Ave.
Without that period, there is a compile error:
The description of 5th Ave is "5th Ave is a one way street going south." 5th Ave is west of Taylor St'  : but this seems to give something a name which contains double-quoted text, which is not allowed. ... this problem message is often caused by an accident in punctuation, in which case you never intended to create an object - you thought that the text ended a sentence because it finished with sentence-ending punctuation, when in fact it didn't, so that I read the next words as following on.

(2) It is *not* possible to bracket '5th Ave' in the description of Taylor St.
That causes a compile error:
In the line '"SW Taylor St runs west from the ri [...] e[close bracket]. Turn [south] onto [Ninth Ave]."'  , I was expecting that '5th Ave' would be something to 'say', but it didn't look like any form of 'say' that I know. So I tried to read '5th Ave' as a value of some kind (because it's legal to say values), but couldn't make sense of it that way either.
]

Taylor St is a room.
[good:]
The description of Taylor St is "SW Taylor St runs west from the river. Turn [north] onto [Fourth Ave]. Go [west] to 5th Ave. Turn [south] onto [Ninth Ave]."
[bad:]
[
The description of Taylor St is "SW Taylor St runs west from the river. Turn [north] onto [Fourth Ave]. Go [west] to [5th Ave]. Turn [south] onto [Ninth Ave]."
]

Fourth Ave is a room.
The printed name of Fourth Ave is "4th Ave".
The description of Fourth Ave is "4th Ave is a one way street going north."
Fourth Ave is north of Taylor St.

5th Ave is a room.
The description of 5th Ave is "5th Ave is a one way street going south.".
5th Ave is west of Taylor St.

Ninth Ave is a room.
The description of Ninth Ave is "Ninth Ave is a one way street going south."
Ninth Ave is south of Taylor St.

[Expects descriptions with 4th, 5th, and Ninth.]
Test path with "n / s / w / e / s / n"
