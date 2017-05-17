// *** Vrischika ***

EXTEND_TOP ~dvrisch~ 21
  + ~Global("A7#BlackHole_Buy", "AR0609", 0)~ + @20000 /* Examine the exceptionally black orb. */ + dvrisch.1
END

EXTEND_TOP ~dvrisch~ 7
  + ~Global("A7#BlackHole", "GLOBAL", 1) PartyHasItem("a7#bag3")~ + @20001 /* "I don't seem to figure out how to make use of the pocket singularity. Any ideas?" */ + dvrisch.2
  + ~Global("A7#BlackHole", "GLOBAL", 10) GlobalLT("Coaxmetal", "GLOBAL", 4) PartyHasItem("a7#bag3")~ + @20002 /* "Can you tell me once more about how to make use of the pocket singularity?" */ + dvrisch.3a
  + ~Global("A7#BlackHole", "GLOBAL", 21) GlobalGT("Coaxmetal", "GLOBAL", 3) PartyHasItem("a7#bag3")~ + @20002 /* "Can you tell me once more about how to make use of the pocket singularity?" */ + dvrisch.3b
END

APPEND ~dvrisch~
  IF ~~ dvrisch.1
    SAY @20003 /* You examine a small black and featureless orb. Vrischika picks it up and hands it to you. It is cold to the touch and heavier than it looks. "This orb is said to be a stable portal into an artificial nondimensional space. The previous owner hasn't disclosed more about its nature, but it's not hard to imagine what it can be used for. I will part with it for the bargain of 1000 copper commons." */
    + ~PartyGoldGT(999)~ + @20004 /* "I'll take it." */ DO ~SetGlobal("A7#BlackHole_Buy", "AR0609", 1) DestroyPartyGold(1000) GiveItemCreate("a7#bag3", Protagonist, 0, 0, 0)~ + 43
    + ~CheckStatLT(LastTalkedToBy, 16, INT) CheckStatLT(LastTalkedToBy, 17, WIS)~ + @20022 /* "And what can it be used for?" */ + dvrisch.1a
    + ~OR(2) CheckStatGT(LastTalkedToBy, 15, INT) CheckStatGT(LastTalkedToBy, 16, WIS)~ + @20023 /* "It can be used for storing a great amount of items. Am I right?" */ + dvrisch.1b
    ++ @20005 /* "Actually, let me see the other things again..." */ + 21
    ++ @20006 /* "No thanks. Farewell, Vrischika." */ EXIT
  END

  IF ~~ dvrisch.1a
    SAY @20024 /* "Isn't it obvious? Objects that are too bulky or heavy to move around by weak mortals can be placed into this artificial space. Once stored it can be moved around or retrieved as one may see fit." */
    IF ~~ + dvrisch.1c
  END

  IF ~~ dvrisch.1b
    SAY @20025 /* "But of course. I cannot accurately determine the actual dimension of this artificial space, but it should be sufficient for your needs in any case." */
    IF ~~ + dvrisch.1c
  END

  IF ~~ dvrisch.1c
    SAY @20026 /* "So, have you decided to purchase it?" */
    + ~PartyGoldGT(999)~ + @20004 /* "I'll take it." */ DO ~SetGlobal("A7#BlackHole_Buy", "AR0609", 1) DestroyPartyGold(1000) GiveItemCreate("a7#bag3", Protagonist, 0, 0, 0)~ + 43
    ++ @20005 /* "Actually, let me see the other things again..." */ + 21
    ++ @20006 /* "No thanks. Farewell, Vrischika." */ EXIT
  END

  IF ~~ dvrisch.2
    SAY @20007 /* "Hmm, maybe I can help." Her black lips curl into a smile. "But it'll cost you. Pay me another 1000 copper commons and I'll tell you all I know about it." */
    + ~PartyGoldGT(999)~ + @20008 /* "I don't have much choice. I'll pay your fee." */ DO ~SetGlobal("Know_Tower_Key", "GLOBAL", 1) DestroyPartyGold(1000) ~ + dvrisch.4
    ++ @20009 /* "Actually, I had another question..." */ + 7
    ++ @20010 /* "Let's see your merchandise, then." */ + 20
    ++ @20011 /* "That's all I wished to know. Farewell." */ EXIT
  END

  IF ~~ dvrisch.3a
    SAY @20012 /* "Certainly. Ask Coaxmetal about it. It resides in the Siege Tower you can enter from the Lower Wards district." */
    ++ @20013 /* "I had another question..." */ + 7
    ++ @20010 /* "Let's see your merchandise, then." */ + 20
    ++ @20011 /* "That's all I wished to know. Farewell." */ EXIT
  END

  IF ~~ dvrisch.3b
    SAY @20021 /* "Certainly. To activate the pocket singularity follow these instructions to the letter:

Open your left hand and form a circle with your thumb and middle finger. Spread your index and little fingers like this and think 'Open'. */
    ++ @20013 /* "I had another question..." */ + 7
    ++ @20010 /* "Let's see your merchandise, then." */ + 20
    ++ @20011 /* "That's all I wished to know. Farewell." */ EXIT
  END

  IF ~~ dvrisch.4
    SAY @20014 /* "Yes," Vrischika purrs, "a wise choice." The copper you pour into her hand seems to disappear the moment in touches her palm. "Now listen carefully:" */
    IF ~GlobalLT("Coaxmetal", "GLOBAL", 4)~ + dvrisch.5a
    IF ~GlobalGT("Coaxmetal", "GLOBAL", 3)~ + dvrisch.5b
  END

  IF ~~ dvrisch.5a
    SAY @20015 /* "I have acquired this artifact not too long ago from a construct called 'Coaxmetal'. It resides in the Siege Tower that can be found in the Lower Wards district. The knowledge how to activate the pocket singularity can be found there. To enter the building you have to find the portal and possess the key to activate it." */
    = @20016 /* "The portal is located at the right side of the tower, on a drawbridge. To activate the portal you have to suppress any desire to enter the tower." */
    IF ~~ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 10)~ UNSOLVED_JOURNAL @50003 + dvrisch.6
  END

  IF ~~ dvrisch.5b
    SAY @20017 /* "I have acquired this artifact not too long ago from a construct called 'Coaxmetal' which resides in the Siege Tower that can be found in the Lower Wards district. It gave me the following instructions how to use it:

    Open your left hand and form a circle with your thumb and middle finger. Spread your index and little fingers like this and think 'Open'.

I haven't verified it myself, so decide yourself what to do with it." */
    IF ~~ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 21) GiveExperience(Protagonist, 4000)~ UNSOLVED_JOURNAL @50004 + dvrisch.6
  END

  IF ~~ dvrisch.6
    SAY @20018 /* "It's been a pleasure doing business with you." */
    + ~GlobalLT("Coaxmetal", "GLOBAL", 4)~ + @20019 /* "But that doesn't answer my question." */ + dvrisch.7
    ++ @20013 /* "I had another question..." */ + 7
    ++ @20010 /* "Let's see your merchandise, then." */ + 20
    ++ @20011 /* "That's all I wished to know. Farewell." */ EXIT
  END

  IF ~~ dvrisch.7
    SAY @20020 /* "On the contrary. I have delivered exactly what I promised: To tell you all I know about the pocket singularity in your possession." */
    ++ @20013 /* "I had another question..." */ + 7
    ++ @20010 /* "Let's see your merchandise, then." */ + 20
    ++ @20011 /* "That's all I wished to know. Farewell." */ EXIT
  END
END
