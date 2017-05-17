// *** Coaxmetal ***

EXTEND_BOTTOM ~dcoax~ 2 #2
  + ~PartyHasItem("a7#bag3") Global("A7#BlackHole", "GLOBAL", 10)~ + @21000 /* "Can you tell me how to unseal the Pocket Singularity?" */ + dcoax.1
  + ~PartyHasItem("a7#bag3") GlobalLT("A7#BlackHole", "GLOBAL", 10) CheckStatGT(Protagonist, 15, WIS)~ + @21000 /* "Can you tell me how to unseal the Pocket Singularity?" */ + dcoax.1
END

APPEND ~dcoax~
  IF ~~ dcoax.1
    SAY @21001 /* THE ORB IS A PORTAL. A KEY IS NEEDED TO OPEN IT. */
    ++ @21002 /* "What is the key?" */ DO ~SetGlobal("A7#BlackHole", "GLOBAL", 20) GiveExperience(Protagonist, 4000)~ UNSOLVED_JOURNAL @50005 + dcoax.2
    ++ @21003 /* "I had another question..." */ + 2
    ++ @21004 /* "I see. That is all I wished to know. Farewell." */ EXIT
  END

  IF ~~ dcoax.2
    SAY @21005 /* OPEN YOUR LEFT HAND AND FORM A CIRCLE WITH YOUR THUMB AND MIDDLE FINGER. SPREAD YOUR INDEX AND LITTLE FINGERS LIKE THIS AND THINK "OPEN". */
    ++ @21006 /* "Before I go, I had other questions..." */ + 2
    ++ @21007 /* "Thank you. Farewell." */ EXIT
  END
END
