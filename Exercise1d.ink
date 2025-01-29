/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 * A story with at least 6 knots
 * Vary some text via a loop
 * Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR Shells = 0



-> intro

== intro ==
Your ship sank while out at sea. You managed to swim to a nearby island and construct a shelter.
-> seashore


== seashore ==
You are sitting on the beach. 
It is {advance_time()}
+[Stroll down the beach] -> beach2
+ [Wait] -> seashore
+{time == 2} [Go to sleep] -> Sleep
-> DONE

== Sleep ==
You lie down in your tent and go to sleep
-> seashore


== beach2 ==
This is further down the beach.
It is {advance_time()}
+{time == 1} [pick up seashells] -> shells
+[Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
~Shells = Shells + 1
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
