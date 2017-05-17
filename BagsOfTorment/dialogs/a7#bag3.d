// *** Item: Sealed Pocket Singularity ***

BEGIN ~a7#bag3~

IF ~True()~ bag.1
  SAY @22000 /* What looks like a black orb from afar is actually a transportable portal into a nondimensional space. The portal appears to be dormant or sealed, however. No matter how hard you try, you can't find a way to open the black orb. */
  + ~CheckStatGT("Nameless", 17, INT) HasItem("a7#bag3", "Nameless")~ + @22001 /* Examine the orb. */ + bag.examine.success.1
  + ~CheckStatGT("Annah", 17, INT) HasItem("a7#bag3", "Annah")~ + @22001 /* Examine the orb. */ + bag.examine.success.1
  + ~CheckStatGT("Dakkon", 17, INT) HasItem("a7#bag3", "Dakkon")~ + @22001 /* Examine the orb. */ + bag.examine.success.1
  + ~CheckStatGT("Grace", 17, INT) HasItem("a7#bag3", "Grace")~ + @22001 /* Examine the orb. */ + bag.examine.success.1
  + ~CheckStatGT("Ignus", 17, INT) HasItem("a7#bag3", "Ignus")~ + @22001 /* Examine the orb. */ + bag.examine.success.1
  + ~CheckStatGT("Vhail", 17, INT) HasItem("a7#bag3", "Vhail")~ + @22001 /* Examine the orb. */ + bag.examine.success.1

  + ~CheckStatLT("Nameless", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Nameless")~ + @22001 /* Examine the orb. */ + bag.examine.success.2
  + ~CheckStatLT("Annah", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Annah")~ + @22001 /* Examine the orb. */ + bag.examine.success.2
  + ~CheckStatLT("Dakkon", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Dakkon")~ + @22001 /* Examine the orb. */ + bag.examine.success.2
  + ~CheckStatLT("Grace", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Grace")~ + @22001 /* Examine the orb. */ + bag.examine.success.2
  + ~CheckStatLT("Ignus", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Ignus")~ + @22001 /* Examine the orb. */ + bag.examine.success.2
  + ~CheckStatLT("Vhail", 18, INT) Global("A7#BlackHole", "GLOBAL", 20) HasItem("a7#bag3", "Vhail")~ + @22001 /* Examine the orb. */ + bag.examine.success.2

  + ~CheckStatLT("Nameless", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Nameless")~ + @22001 /* Examine the orb. */ + bag.examine.success.3
  + ~CheckStatLT("Annah", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Annah")~ + @22001 /* Examine the orb. */ + bag.examine.success.3
  + ~CheckStatLT("Dakkon", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Dakkon")~ + @22001 /* Examine the orb. */ + bag.examine.success.3
  + ~CheckStatLT("Grace", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Grace")~ + @22001 /* Examine the orb. */ + bag.examine.success.3
  + ~CheckStatLT("Ignus", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Ignus")~ + @22001 /* Examine the orb. */ + bag.examine.success.3
  + ~CheckStatLT("Vhail", 18, INT) Global("A7#BlackHole", "GLOBAL", 21) HasItem("a7#bag3", "Vhail")~ + @22001 /* Examine the orb. */ + bag.examine.success.3

  + ~CheckStatLT(Protagonist, 18, INT) GlobalLT("A7#BlackHole", "GLOBAL", 2) HasItem("a7#bag3", "Nameless")~ + @22002 /* "Hello! Anyone in there?" */ + bag.examine.shout

  + ~HasItem("a7#bag3", "Morte") Global("A7#BlackHole", "GLOBAL", 20)~ + @22001 /* Examine the orb. */ + bag.examine.morte.1
  + ~HasItem("a7#bag3", "Morte") Global("A7#BlackHole", "GLOBAL", 21)~ + @22001 /* Examine the orb. */ + bag.examine.morte.2

  + ~HasItem("a7#bag3", "Nordom") OR(2) Global("A7#BlackHole", "GLOBAL", 20) Global("A7#BlackHole", "GLOBAL", 21)~ + @22001 /* Examine the orb. */ + bag.examine.nordom

  + ~CheckStatLT("Nameless", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Nameless")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~CheckStatLT("Annah", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Annah")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~CheckStatLT("Dakkon", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Dakkon")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~CheckStatLT("Grace", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Grace")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~CheckStatLT("Ignus", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Ignus")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~CheckStatLT("Vhail", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") HasItem("a7#bag3", "Vhail")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT
  + ~Global("A7#BlackHole", "GLOBAL", 0) !Dead("Vrischika") OR(2) HasItem("a7#bag3", "Morte") HasItem("a7#bag3", "Nordom")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 1)~ UNSOLVED_JOURNAL @50001 EXIT

  + ~CheckStatLT("Nameless", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Nameless")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~CheckStatLT("Annah", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Annah")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~CheckStatLT("Dakkon", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Dakkon")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~CheckStatLT("Grace", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Grace")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~CheckStatLT("Ignus", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Ignus")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~CheckStatLT("Vhail", 18, INT) Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") HasItem("a7#bag3", "Vhail")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT
  + ~Global("A7#BlackHole", "GLOBAL", 0) Dead("Vrischika") OR(2) HasItem("a7#bag3", "Morte") HasItem("a7#bag3", "Nordom")~ + @22003 /* Put the item away. */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 2)~ UNSOLVED_JOURNAL @50002 EXIT

  + ~OR(2) CheckStatGT("Nameless", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Nameless")~ + @22003 /* Put the item away. */ EXIT
  + ~OR(2) CheckStatGT("Annah", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Annah")~ + @22003 /* Put the item away. */ EXIT
  + ~OR(2) CheckStatGT("Dakkon", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Dakkon")~ + @22003 /* Put the item away. */ EXIT
  + ~OR(2) CheckStatGT("Grace", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Grace")~ + @22003 /* Put the item away. */ EXIT
  + ~OR(2) CheckStatGT("Ignus", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Ignus")~ + @22003 /* Put the item away. */ EXIT
  + ~OR(2) CheckStatGT("Vhail", 17, INT) !Global("A7#BlackHole", "GLOBAL", 0) HasItem("a7#bag3", "Vhail")~ + @22003 /* Put the item away. */ EXIT
  + ~!Global("A7#BlackHole", "GLOBAL", 0) OR(2) HasItem("a7#bag3", "Morte") HasItem("a7#bag3", "Nordom")~ + @22003 /* Put the item away. */ EXIT
END

IF ~~ bag.examine.success.1
  SAY @22004 /* You take a closer look at the orb. At first the surface of the item looks black and featureless. When you relax your eyes a bit you can see some kind of after-image which changes in intensity depending on how you move your left hand. After trying out different gestures the orb flashes briefly and produces a faint permanent halo around it. You can effortless reach into what seems to be an alternate space. */
  IF ~~ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 100) GiveExperience(Protagonist, 4000) TransformPartyItem("a7#bag3", "a7#bag4", 0, 0, 0)~ SOLVED_JOURNAL @50100 EXIT
END

IF ~~ bag.examine.success.2
  SAY @22005 /* You take a closer look at the orb. The surface of the item looks black and featureless. Remembering the instructions from Coaxmetal you use your left hand to form a specific gesture. Almost immediately the orb flashes briefly and produces a faint permanent halo around it. You can effortless reach into what seems to be an alternate space. */
  IF ~~ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 101) TransformPartyItem("a7#bag3", "a7#bag4", 0, 0, 0)~ SOLVED_JOURNAL @50101 EXIT
END

IF ~~ bag.examine.success.3
  SAY @22006 /* You take a closer look at the orb. The surface of the item looks black and featureless. Remembering the instructions from Vrischika you use your left hand to form a specific gesture. Almost immediately the orb flashes briefly and produces a faint permanent halo around it. You can effortless reach into what seems to be an alternate space. */
  IF ~~ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 102) TransformPartyItem("a7#bag3", "a7#bag4", 0, 0, 0)~ SOLVED_JOURNAL @50102 EXIT
END

IF ~~ bag.examine.shout
  SAY @22010 /* Despite all your shouting the orb doesn't react and stays black, cool and featureless as ever. */
  IF ~~ DO ~IncrementGlobalOnceEx("GLOBALA7#Chaotic_BlackHole", "GLOBALLaw", -1)~ + bag.1
END

IF ~~ bag.examine.morte.1
  SAY @22007 /* Morte takes a closer look at the orb. The surface of the item looks black and featureless. Remembering the instructions from Coaxmetal Morte simply shrugs "Hey, chief. Just to let you know, me and my left hand went separate ways long time ago." */
  ++ @22003 /* Put the item away. */ EXIT
END

IF ~~ bag.examine.morte.2
  SAY @22008 /* Morte takes a closer look at the orb. The surface of the item looks black and featureless. Remembering the instructions from Vrischika Morte simply shrugs "Hey, chief. Just to let you know, me and my left hand went separate ways long time ago." */
  ++ @22003 /* Put the item away. */ EXIT
END

IF ~~ bag.examine.nordom
  SAY @22009 /* Nordom takes a closer look at the orb. The surface of the item looks black and featureless. He stares at the orb intently and states "Required: Prehensile multi-fingered structure on left forearm." Nordom *tkkk-tkkk-tkkks* for a moment, then *chrrrups.* "Result: Unable to perform activation sequence for transdimensional portal." */
  ++ @22003 /* Put the item away. */ EXIT
END
