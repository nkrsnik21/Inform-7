"Deklarativno programiranje projekt" by Nina

Chapter 1 - The Beginning in the Center of the Park

When play begins:
	say "[bold type]Hello, this is Max’s Journey: Lost in New York. [roman type] [line break]
Welcome to an adventure through the bustling streets of New York City, as seen through the eyes of Max, a loyal dog who has lost his way. Max was separated from his owner during a stroll in the park, and now he must navigate the vibrant and sometimes overwhelming city to find his way back.

As Max, you’ll sniff out clues, interact with colorful characters, and explore unique locations like parks, coffee shops, and bustling city squares. Along the way, you’ll uncover the heartwarming story of friendship, determination, and the unbreakable bond between a dog and its owner.

Will Max's instincts guide him back to the one person who means the world to him? The journey begins now."; now the time of day is 5:34 pm; now the left hand status line is  "Time: [time of day] 1st October"; now the printed name of House key is "Unknown Item"; now the description of House key is "What is this thing?";

Understand "Unknown Item" as House key when the printed name of House key is "Unknown Item".
	
The display banner rule is listed before the when play begins stage rule in the startup rules.

Include Music by Daniel Stelzer.

Sound of Park is the file "Park.ogg".
Sound of Coffee is the file "Coffee.ogg".
Sound of Door is the file "Door.ogg".

Figure of Map is the file "Map.png".

Use no scoring.
Release along with the "Quixe" interpreter.

Release along with cover art ("Full moon cover").

To silence all:
	repeat with wave running through sound names:
		stop wave.

Carry out restarting the game:
	silence all.

Mapping is an action applying to nothing.
Understand "map" as mapping.
Understand "look at map" as mapping.

After mapping:
	display the Figure of Map;
	continue the action;

[Variables]
MaxMove is a truth state that varies. MaxMove is false. [Moves Max to Coffee Shop after he pick-up the key]
MaxMoves is a truth state that varies. MaxMoves is false. [Moves Max to Apartment after he open the Oak front door]
Vgoodbye is a truth state that varies. Vgoodbye is false. [Description at the end of a game]
	
The Park is a room. The Park is east from the Coffee Shop. The Park is north from the Bakery."It is a sunny afternoon, open park filled with people walking, playing, and relaxing on the grass. There are a few benches scattered around, and trees line the perimeter. For now, everything feels peaceful.";
	
When play begins:
	if the location is the Park:
		now the sound channel of the Sound of Park is the foreground;
		internally play the Sound of Park on the foreground repeating 2 times;
		continue the action;

After going to Coffee Shop:
	stop the Sound of Park;
	continue the action;
	
After going to Bakery:
	stop the Sound of Park;
	continue the action;
	
Max is a animal in Park. Max can be thirsty or not thirsty. Max is thirsty.

"Max looks around, sniffing the air, his tail wagging with a sense of hope. He’s lost, but he’s not giving up.";

 Bench is in Park. The description of Bench is "The bench is worn but sturdy. A small note is pinned to it.";

Note is on the bench. The description of the note is "The note is a crumpled piece of paper with the words 'Lost dog' written on it. There’s a phone number scribbled at the bottom.";

Tree is in Park.
Instead of examining the tree:
	say "The tree’s branches sway gently in the breeze, casting a patch of shade over the park. Nothing seems unusual about it, but Max senses something familiar about the scent of the leaves.";

The fountain is in the Park. The fountain is a container. The fountain contains water. The description of fountain is "A small fountain bubbles cheerfully. The water looks clean and drinkable."

Water is a thing.

The number of drinks left in the fountain is a number that varies. The number of drinks left in the fountain is 3.

Instead of drinking water:
	if the number of drinks left in the fountain is greater than 0:
		say "Max laps up the cool water from the fountain. It feels refreshing!";
		decrease the number of drinks left in the fountain by 1;
		if the number of drinks left in the fountain is 0:
			say "The fountain is now dry. There's no more water.";
	otherwise:
		say "The fountain is dry. Max can't drink any more water.";
		
Refilling the fountain is an action applying to nothing.

Understand "refill fountain" or "refill the fountain" or "refill" as refilling the fountain.

Instead of refilling the fountain:
	now the number of drinks left in the fountain is 3;
	say "The fountain is refilled. Max can drink again!";

Jakov is a person in a Park. The description of Jakov is "He is a jogger that runs every day in the Park. He seems very friendly but he run away.";

Conversation-state is a truth state that varies. Conversation-state is false.

Saying hi to is an action applying to one visible thing.
Understand "say hi to [someone]" as saying hi to.

Carry out saying hi to Jakov:
	if conversation-state is false:
		say "'Hi there!' says Max to Jakov.";
		say "'Max, are you thirsty?' asks Jakov.";
		now conversation-state is true;
	otherwise:
		say "Jakov is already talking to you.";

After reading a command when conversation-state is true:
	if the player's command matches "yes":
		say "'Then you should drink from the fountain over there,' Jakov suggests.";
		now conversation-state is false;
		rule succeeds;
	else if the player's command matches "no":
		say "'Alright, stay hydrated!' says Jakov before jogging away.";
		now conversation-state is false;
		rule succeeds;
	otherwise:
		say "Jakov is waiting for you to answer 'yes' or 'no.'";
		reject the player's command.

Instead of drinking water:
	if Max is thirsty:
		say "Max laps up the cool water from the fountain. He feels refreshed and happy!";
		now Max is not thirsty;
	otherwise:
		say "Max isn't thirsty right now.";

After taking note:
	if MaxMove is false:
		now Max is in Coffee Shop;
		now MaxMove is true;
		continue the action;

Chapter 2 - The Coffee Shop

Coffee Shop is a room. "It is a cozy, bustling café with the warm aroma of freshly brewed coffee filling the air. Soft jazz music plays in the background, creating a calm ambiance.";


After going to Coffee Shop:
	now the sound channel of the Sound of Coffee is the foreground;
	internally play the Sound of Coffee on the foreground repeating 2 times;
	continue the action;

After going to Park:
	stop the Sound of Coffee;
	continue the action;
	
After going to Bakery:
	stop the Sound of Coffee;
	continue the action;

Ana is person in Coffee Shop. The description of Ana is "She's been working here for 5 years and she knows all the customers. She is very kind and polite."


Menu is in Coffee Shop. 
The description of the menu is "The menu is a blackboard on the wall behind the counter, filled with various coffee blends and pastries. You see something written in chalk: 'Special today: Dog-friendly lattes!'";

Lying down is an action applying to nothing.  
Understand "lie down" or "lay down" as lying down.

Instead of lying down when the player is in the Coffee Shop:
	say "You find a warm, cozy corner by the fireplace and curl up. The soft murmur of conversation and the occasional clink of cups soothe you. [italic type]This feels like a good place to rest for a while.[roman type]";


A dog biscuit is in Coffee Shop. Dog biscuit is edible.

The description of dog biscuit is "A small biscuit, shaped like a bone, the exact ones Max's owner gave him. It’s likely a treat for him for being a good boy.";

[Tables]
Table of Ana Responses
Topic	Response	Index
"Hello"	"Oh! Hi, Max! I haven't seen you for a days. You look tired."	"Hello"
"Owner"	"Your owner has been looking for you everywhere. He left here a dog biscuit in a case you visit this Coffee Shop."	"Owner"

After asking Ana about something:
	if the topic understood is a topic listed in the Table of Ana Responses:
		say "[Response entry]";

list-asking is an action applying to one visible thing.
understand "ask [thing]" as list-asking.
understand "ask [thing] about" as list-asking.

instead of list-asking a person:
	if the noun is Ana:
		let T be the Table of Ana Responses;
		list options from T;
	otherwise:
		say "You can't ask any questions."
		
To list options from (T - a table name):
	let N be the number of rows in T;
	if N is 0:
		say "There is nothing to ask about.";
	otherwise:
		say "You could ask about ";
		repeat with X running from 1 to N minus 1:
			say "[index in row X of T][if N is greater than 2],[end if] ";
		if N is greater than 1:
			say "or ";
		say "[index in row N of T]."
		
Chapter 3 - In the Bakery

The Bakery is a room. "The air here is warm and sweet, filled with the rich aroma of freshly baked bread, cinnamon rolls, and pastries. The walls are painted a soft yellow. Small round tables with mismatched chairs are scattered throughout, each topped with a simple vase of fresh flowers. ";

Newsletter is in the Bakery. The description of newsletter is "The front page of today's newspaper immediately catches your eye. A large headline reads: 'LOST DOG IN NEW YORK CITY.' Beneath it, there's a photograph of a dog that looks remarkably like Max." 


An End Table is a kind of container. An End Table is openable. An End Table can be open. An End Table is usually openable and closed.

[Container]
Wooden table is an end table.  Wooden table is in Bakery. The description of a wooden table is "The table is sturdy and well-worn, its dark oak surface smooth from years of use. On the table sits a small vase with a single daisy.";

House key is in Wooden table.

Instead of examining the House key:
	say "This is a house key. It looks like it could open the front door of a house. You wonder where it came from and who it belongs to."; 
	
[Door]
The Oak front door is a door. The Oak front door is locked. The Oak front door is south of the Bakery. The description of The Oak front door is "The door is tall and made of solid oak, its surface polished to a warm but it squeaks a little when you are opening it. Looks like they've been opened for a long time". The matching key of the Oak front door is the House
		
Chapter 4 - The End

Apartment is a room. The Apartment is west from the Bakery. The description of Apartment is "A place where Max and his Owner live."

Instead of opening the front door:
	now the front door is open;
	say "The door creaks open [line break]."; 
	now the sound channel of the Sound of Door is the foreground;
	internally play the Sound of Door on the foreground repeating 1 times;
	move Max to the Apartment;
	now Vgoodbye is true;
	if Vgoodbye is true:
		say "[bold type]The End[paragraph break]";
		say "[italic type]The moment Max steps into the apartment, a wave of recognition washes over him. The warm, comforting scent of his owner lingers in the air. On the wall hangs a collage of photographs, many featuring Max and his owner, smiling and carefree. Everything here feels just right—this is where Max belongs[paragraph break].";
	end the story.
	

Table of Book Contents
page	content
2	"dhuma jyotih salila marutam / samnipatah kva meghah / samdes arthah kva patukaranaih / pranibhih prapaniyah"
13	"amathesteron pws eipe kai saphesteron"
50	"Rrgshilz maplot..."


