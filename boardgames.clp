(deffacts BoardGames
	(game AQ "Arcadia Quest" "semi-cooperative" "Fantasy/RPG")
	(game BH "Betrayal at House on the Hill" "semi-cooperative" "Horror/Tile Placement")
	(game CP "Coup" "competitive" "Bluffing/Party Game")
	(game DI "Dixit" "competitive" "Party Game")
	(game DM "Dominion" "competitive" "Deckbuilder")
	(game GT "Galaxy Trucker" "competitive" "Sci-Fi")
	(game RA "Roll Through the Ages: The Bronze Age" "competitive" "Civ Building")
	(game SE "The Settlers of Catan" "competitive" "Civ Building")
	(game SN "Sheriff of Nottingham" "competitive" "Bluffing")
	(game SW "Small World" "competitive" "Area Control")
	(game SP "Splendor" "competitive" "Economic")
	(game SF "Star Fluxx" "competitive" "Party Game")
	(game TR "Ticket to Ride" "competitive" "Train Baron Simulation")
	(game SC "Shadows over Camelot" "cooperative" "Fantasy/Bluffing")
	(game CA "Carcassonne" "competitive" "Tile placement")
	(game PA "Pandemic" "cooperative" "Area Control")
	(game WO "7 Wonders" "competitive" "Card Passing ")
	(game CO "Codenames" "cooperative" "Deduction/Party")
	(game HA "Hanabi" "cooperative" "Deduction/Memory")
	(game LW "Lords of Waterdeep" "competitive" "Fantasy/Resource Management")
	(game DW "Dead of Winter" "cooperative" "Zombies")
	(game FT "Five Tribes" "competitive" "Area Control")
	(game SR "Star Realms" "competitive" "Deckbuilder")
	(game QA "Quadropolis" "competitive" "Civ Building")
	(game CH "Chaos in the Old World" "semi-cooperative" "Area Control")
	(game BO "Bonanza" "competitive" "Party Game")
	(game AA "Apples to Apples" "competitive" "Party Game")
	(game SH "Secret Hitler" "team-based" "Bluffing/Party Game")
	(game DE "Deception: Murder in Hong Kong" "team-based" "Bluffing")
	(game SG "Sushi Go!" "competitive" "Card passing/Party")
	(game AF "Alien Frontiers" "competitive" "Sci-Fi/Diceroller/Area Control")
	(game CL "Clank" "competitive" "Dungeon/Fantasy/Deckbuilder"))

(deffacts PlayerRange
	(player-range "Arcadia Quest" 2 4)
	(player-range "Betrayal at House on the Hill" 3 6)
	(player-range "Coup" 2 6)
	(player-range "Dixit" 3 6)
	(player-range "Dominion" 2 4)
	(player-range "Galaxy Trucker" 2 4)
	(player-range "Roll Through the Ages: The Bronze Age" 1 4)
	(player-range "The Settlers of Catan" 3 6)
	(player-range "Sheriff of Nottingham" 3 5)
	(player-range "Small World" 3 5)
	(player-range "Splendor" 2 4)
	(player-range "Star Fluxx" 2 6)
	(player-range "Ticket to Ride" 2 5)
	(player-range "Shadows over Camelot" 4 7)
	(player-range "Carcassonne" 2 5)
	(player-range "Pandemic" 2 4)
	(player-range "7 Wonders" 2 7)
	(player-range "Codenames" 2 8)
	(player-range "Hanabi" 2 5)
	(player-range "Lords of Waterdeep" 2 5)
	(player-range "Dead of Winter" 3 5)
	(player-range "Five Tribes" 2 4)
	(player-range "Star Realms" 2 2)
	(player-range "Quadropolis" 2 4)
	(player-range "Chaos in the Old World" 3 4)
	(player-range "Bonanza" 2 7)
	(player-range "Apples to Apples" 4 10)
	(player-range "Secret Hitler" 4 20)
	(player-range "Deception: Murder in Hong Kong" 5 10)
	(player-range "Sushi Go!" 3 8)
	(player-range "Alien Frontiers" 2 4)
	(player-range "Clank" 2 4))

(deftemplate GameLength
	0 120 minutes (
	(AQ (60 0) (75 1) (90 0))
	(BH (30 0) (60 1) (90 0))
	(CP (20 0) (25 1) (30 0))
	(DI (15 0) (22 1) (30 0))
	(DM (30 0) (40 1) (50 0))
	(GT (45 0) (52 1) (60 0))
	(RA (20 0) (27 1) (35 0))
	(SE (50 0) (85 1) (120 0))
	(SN (30 0) (45 1) (60 0))
	(SW (40 0) (60 1) (80 0))
	(SP (30 0) (40 1) (50 0))
	(SF ( 5 0) (60 1) (120 0))
	(TR (40 0) (50 1) (60 0))
	(SC (50 0) (70 1) (90 0))
	(CA (30 0) (37 1) (45 0))
	(PA (45 0) (52 1) (60 0))
	(WO (30 0) (37 1) (45 0))
	(CO (20 0) (27 1) (35 0))
	(HA (30 0) (37 1) (45 0))
	(LW (50 0) (70 1) (90 0))
	(DW (60 0) (75 1) (90 0))
	(FT (45 0) (60 1) (80 0))
	(SR (20 0) (25 1) (30 0))
	(QA (45 0) (52 1) (60 0))
	(CH (90 0) (105 1) (120 0))
	(BO (30 0) (37 1) (45 0))
	(AA (15 0) (22 1) (30 0))
	(SH (40 0) (47 1) (55 0))
	(DE (20 0) (30 1) (40 0))
	(SG (15 0) (20 1) (25 0))
	(AF (60 0) (75 1) (90 0))
	(CL (30 0) (40 1) (50 0))))
	
(deftemplate GameFocus
	-3 36 rating (
	(AQ (27 0) (31 1) (35 0))
	(BH (10 0) (14 1) (18 0))
	(CP (9  0) (13 1) (17 0))
	(DI (-1 0) (3  1) (7  0))
	(DM (17 0) (21 1) (25 0))
	(GT (21 0) (25 1) (29 0))
	(RA (2  0) (6  1) (10 0))
	(SE (13 0) (17 1) (21 0))
	(SN (7  0) (11 1) (15 0))
	(SW (15 0) (19 1) (23 0))
	(SP (11 0) (15 1) (19 0))
	(SF (-2 0) (2  1) (6  0))
	(TR (5  0) (9  1) (13 0))
	(SC (22 0) (26 1) (30 0))
	(CA (12 0) (16 1) (20 0))
	(PA (19 0) (23 1) (27 0))
	(WO (16 0) (20 1) (24 0))
	(CO (8  0) (12 1) (16 0))
	(HA (6  0) (10 1) (14 0))
	(LW (24 0) (28 1) (32 0))
	(DW (26 0) (30 1) (34 0))
	(FT (18 0) (22 1) (26 0))
	(SR (14 0) (18 1) (22 0))
	(QA (23 0) (27 1) (31 0))
	(CH (28 0) (32 1) (36 0))
	(BO (1  0) (5  1) (9  0))
	(AA (-3 0) (1  1) (5  0))
	(SH (3  0) (7  1) (11 0))
	(DE (4  0) (8  1) (12 0))
	(SG (0  0) (4  1) (8  0))
	(AF (25 0) (29 1) (33 0))
	(CL (20 0) (24 1) (28 0))))

(deftemplate GameFocus
	-3 36 rating (
	(AQ (4 0) (8 1) (12 0))
	(BH (0 0) (4 1) ( 8 0))))

(deftemplate Act
	0 4 hardcoreness (
	(H0 (0 1) (1 0))
	(H1 (0 0) (1 1) (2 0))
	(H2 (1 0) (2 1) (3 0))
	(H3 (2 0) (3 1) (4 0))
	(H4 (3 0) (4 1))))

;;

(defrule GetFilterCriteria
	?i <- (initial-fact)
	=>
	(printout t "Howdy. Let's work together to find out the best game for you to play at your next party." crlf)
	(printout t "Please enter the amount of people that you expect to play: ")
	(bind ?playerCount (read))
	(assert (player-count ?playerCount))

	(printout t "Time: ")
	(bind ?idealTime (read))
	(assert (GameLength (?idealTime 0) (?idealTime 1) (?idealTime 0)))

	(printout t "Focus: ")
	(bind ?focusLevel (read))
	(assert (GameFocus (?focusLevel 0) (?focusLevel 1) (?focusLevel 0)))

	(retract ?i))

(defrule FilterGamesList
	(game ?code ?name ? ?)
	(player-range ?name ?min ?max)
	(player-count ?playerCount)
	(test (>= ?playerCount ?min))
	(test (<= ?playerCount ?max))
	=>
	(assert (valid-game ?code)))

; FAMs are autogenerated code - see documentation

(defrule FamSF
  (valid-game SF)
  (GameLength SF)
  (GameFocus  SF)
  =>
  (assert (Act H0)))

(defrule FamAA
  (valid-game AA)
  (GameLength AA)
  (GameFocus  AA)
  =>
  (assert (Act H0)))

(defrule FamDI
  (valid-game DI)
  (GameLength DI)
  (GameFocus  DI)
  =>
  (assert (Act H1)))

(defrule FamRA
  (valid-game RA)
  (GameLength RA)
  (GameFocus  RA)
  =>
  (assert (Act H1)))

(defrule FamBO
  (valid-game BO)
  (GameLength BO)
  (GameFocus  BO)
  =>
  (assert (Act H1)))

(defrule FamSG
  (valid-game SG)
  (GameLength SG)
  (GameFocus  SG)
  =>
  (assert (Act H1)))

(defrule FamBH
  (valid-game BH)
  (GameLength BH)
  (GameFocus  BH)
  =>
  (assert (Act H2)))

(defrule FamCP
  (valid-game CP)
  (GameLength CP)
  (GameFocus  CP)
  =>
  (assert (Act H2)))

(defrule FamSE
  (valid-game SE)
  (GameLength SE)
  (GameFocus  SE)
  =>
  (assert (Act H2)))

(defrule FamSN
  (valid-game SN)
  (GameLength SN)
  (GameFocus  SN)
  =>
  (assert (Act H2)))

(defrule FamSP
  (valid-game SP)
  (GameLength SP)
  (GameFocus  SP)
  =>
  (assert (Act H2)))

(defrule FamTR
  (valid-game TR)
  (GameLength TR)
  (GameFocus  TR)
  =>
  (assert (Act H2)))

(defrule FamCA
  (valid-game CA)
  (GameLength CA)
  (GameFocus  CA)
  =>
  (assert (Act H2)))

(defrule FamCO
  (valid-game CO)
  (GameLength CO)
  (GameFocus  CO)
  =>
  (assert (Act H2)))

(defrule FamHA
  (valid-game HA)
  (GameLength HA)
  (GameFocus  HA)
  =>
  (assert (Act H2)))

(defrule FamSH
  (valid-game SH)
  (GameLength SH)
  (GameFocus  SH)
  =>
  (assert (Act H2)))

(defrule FamDE
  (valid-game DE)
  (GameLength DE)
  (GameFocus  DE)
  =>
  (assert (Act H2)))

(defrule FamDM
  (valid-game DM)
  (GameLength DM)
  (GameFocus  DM)
  =>
  (assert (Act H3)))

(defrule FamGT
  (valid-game GT)
  (GameLength GT)
  (GameFocus  GT)
  =>
  (assert (Act H3)))

(defrule FamSW
  (valid-game SW)
  (GameLength SW)
  (GameFocus  SW)
  =>
  (assert (Act H3)))

(defrule FamSC
  (valid-game SC)
  (GameLength SC)
  (GameFocus  SC)
  =>
  (assert (Act H3)))

(defrule FamPA
  (valid-game PA)
  (GameLength PA)
  (GameFocus  PA)
  =>
  (assert (Act H3)))

(defrule FamWO
  (valid-game WO)
  (GameLength WO)
  (GameFocus  WO)
  =>
  (assert (Act H3)))

(defrule FamLW
  (valid-game LW)
  (GameLength LW)
  (GameFocus  LW)
  =>
  (assert (Act H3)))

(defrule FamFT
  (valid-game FT)
  (GameLength FT)
  (GameFocus  FT)
  =>
  (assert (Act H3)))

(defrule FamSR
  (valid-game SR)
  (GameLength SR)
  (GameFocus  SR)
  =>
  (assert (Act H3)))

(defrule FamQA
  (valid-game QA)
  (GameLength QA)
  (GameFocus  QA)
  =>
  (assert (Act H3)))

(defrule FamAF
  (valid-game AF)
  (GameLength AF)
  (GameFocus  AF)
  =>
  (assert (Act H3)))

(defrule FamCL
  (valid-game CL)
  (GameLength CL)
  (GameFocus  CL)
  =>
  (assert (Act H3)))

(defrule FamAQ
  (valid-game AQ)
  (GameLength AQ)
  (GameFocus  AQ)
  =>
  (assert (Act H4)))

(defrule FamDW
  (valid-game DW)
  (GameLength DW)
  (GameFocus  DW)
  =>
  (assert (Act H4)))

(defrule FamCH
  (valid-game CH)
  (GameLength CH)
  (GameFocus  CH)
  =>
  (assert (Act H4)))

; end of autogenerated code

(defrule DebugPrint
	(declare (salience -1))
	?sel <- (Act ?name)
	=>
	(bind ?t (maximum-defuzzify ?name))
	(printout t "Selection " ?name ": " ?t crlf)
)

