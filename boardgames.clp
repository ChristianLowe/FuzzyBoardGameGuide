(defrule SetRandom
	(initial-fact)
	=>
	(set-strategy random))

	
(deffacts BoardGames
	(games-suggested 0)
	(game AQ 4 "Arcadia Quest" "semi-cooperative" "fantasy/RPG")
	(game BH 2 "Betrayal at House on the Hill" "semi-cooperative" "horror/tile placement")
	(game CP 2 "Coup" "competitive" "bluffing/party game")
	(game DI 1 "Dixit" "competitive" "party game")
	(game DM 3 "Dominion" "competitive" "deckbuilder")
	(game GT 3 "Galaxy Trucker" "competitive" "sci-fi")
	(game RA 1 "Roll Through the Ages: The Bronze Age" "competitive" "civ building")
	(game SE 2 "The Settlers of Catan" "competitive" "civ building")
	(game SN 2 "Sheriff of Nottingham" "competitive" "bluffing")
	(game SW 3 "Small World" "competitive" "area control")
	(game SP 2 "Splendor" "competitive" "economic")
	(game SF 0 "Star Fluxx" "competitive" "anything goes")
	(game TR 2 "Ticket to Ride" "competitive" "train baron simulation")
	(game SC 3 "Shadows over Camelot" "cooperative" "fantasy/bluffing")
	(game CA 2 "Carcassonne" "competitive" "tile placement")
	(game PA 3 "Pandemic" "cooperative" "area control")
	(game WO 3 "7 Wonders" "competitive" "card passing")
	(game CO 2 "Codenames" "cooperative" "deduction/party game")
	(game HA 2 "Hanabi" "cooperative" "deduction/memory")
	(game LW 3 "Lords of Waterdeep" "competitive" "fantasy/resource management")
	(game DW 4 "Dead of Winter" "cooperative" "zombie")
	(game FT 3 "Five Tribes" "competitive" "area control")
	(game SR 3 "Star Realms" "competitive" "deckbuilder")
	(game QA 3 "Quadropolis" "competitive" "civ building")
	(game CH 4 "Chaos in the Old World" "semi-cooperative" "area control")
	(game BO 1 "Bonanza" "competitive" "party game")
	(game AA 0 "Apples to Apples" "competitive" "party game")
	(game SH 2 "Secret Hitler" "team-based" "bluffing/party game")
	(game DE 2 "Deception: Murder in Hong Kong" "team-based" "bluffing")
	(game SG 1 "Sushi Go!" "competitive" "card passing/party game")
	(game AF 3 "Alien Frontiers" "competitive" "sci-fi/diceroller/area control")
	(game CL 3 "Clank" "competitive" "dungeon/fantasy/deckbuilder"))

	
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
	(player-range "Star Fluxx" 2 6)
	(player-range "Splendor" 2 4)
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
	0 105 minutes (
	(AQ (60 0) (75 1) (90 0))
	(BH (30 0) (60 1) (90 0))
	(CP (20 0) (25 1) (30 0))
	(DI (15 0) (22 1) (30 0))
	(DM (30 0) (40 1) (50 0))
	(GT (45 0) (52 1) (60 0))
	(RA (20 0) (27 1) (35 0))
	(SE (50 0) (85 1))
	(SN (30 0) (45 1) (60 0))
	(SW (40 0) (60 1) (80 0))
	(SP (30 0) (40 1) (50 0))
	(SF ( 5 1) (15 0))
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
	(CH (75 0) (105 1))
	(BO (30 0) (37 1) (45 0))
	(AA (15 0) (22 1) (30 0))
	(SH (40 0) (47 1) (55 0))
	(DE (20 0) (30 1) (40 0))
	(SG (15 0) (20 1) (25 0))
	(AF (60 0) (75 1) (90 0))
	(CL (30 0) (40 1) (50 0))))
	
	
(deftemplate GameFocus
	-13 47 rating (
	(AQ (17  0) (31 1) (45 0))
	(BH (0   0) (14 1) (28 0))
	(CP (-1  0) (13 1) (27 0))
	(DI (-11 0) (3  1) (17 0))
	(DM (7   0) (21 1) (35 0))
	(GT (11  0) (25 1) (39 0))
	(RA (-8  0) (6  1) (20 0))
	(SE (3   0) (17 1) (31 0))
	(SN (-3  0) (11 1) (25 0))
	(SW (5   0) (19 1) (33 0))
	(SP (1   0) (15 1) (29 0))
	(SF (-12 0) (2  1) (16 0))
	(TR (-5  0) (9  1) (23 0))
	(SC (12  0) (26 1) (40 0))
	(CA (2   0) (16 1) (30 0))
	(PA (9   0) (23 1) (37 0))
	(WO (6   0) (20 1) (34 0))
	(CO (-2  0) (12 1) (26 0))
	(HA (-4  0) (10 1) (24 0))
	(LW (14  0) (28 1) (42 0))
	(DW (16  0) (30 1) (44 0))
	(FT (8   0) (22 1) (36 0))
	(SR (4   0) (18 1) (32 0))
	(QA (13  0) (27 1) (41 0))
	(CH (18  0) (32 1))
	(BO (-9  0) (5  1) (19  0))
	(AA (-13 1) (1  0))
	(SH (-7  0) (7  1) (21 0))
	(DE (-6  0) (8  1) (22 0))
	(SG (-10 0) (4  1) (18 0))
	(AF (15  0) (29 1) (43 0))
	(CL (10  0) (24 1) (38 0))))
	
	
(deftemplate Act
	0 4 hardcoreness (
	(HA (0 1) (1 0))
	(HB (0 0) (1 1) (2 0))
	(HC (1 0) (2 1) (3 0))
	(HD (2 0) (3 1) (4 0))
	(HE (3 0) (4 1))))

;;

(defrule GetFilterCriteria
	?i <- (initial-fact)
	=>
	(printout t "Howdy. Let's work together to find out the best game for you to play at your next party." crlf)
	(printout t "Please enter the amount of people that you expect to play (4 recommended): ")
	(bind ?playerCount (read))
	(assert (player-count ?playerCount))

	(printout t "From between 10 to 80, about how many minutes do you want the game to last? ")
	(bind ?idealTime (read))
	(assert (GameLength (?idealTime 0) (?idealTime 1) (?idealTime 0)))
	(printout t crlf)

	(printout t "The amount of focus that a group can put into a game can depend on a variety of factors," crlf)
	(printout t "such as the amount of noise in the environment, how extroverted the players are, and the" crlf)
	(printout t "availability of adult beverages. On a scale from 1 to 10, how focused do you think that" crlf)
	(printout t "the players in this group will be on the game? ")
	(bind ?focusLevel (- (* (read) 5) 7))
	;(printout t "New Focus: " ?focusLevel crlf)
	(assert (GameFocus (?focusLevel 0) (?focusLevel 1) (?focusLevel 0)))
	(printout t crlf)
	
	(retract ?i))

	
(defrule FilterGamesList
	(game ?code ? ?name ? ?)
	(player-range ?name ?min ?max)
	(player-count ?playerCount)
	(test (>= ?playerCount ?min))
	(test (<= ?playerCount ?max))
	=>
	(assert (valid-game ?code)))
	
	
(defrule AssertHardcoreness
	(declare (salience -1))
	
	?sel <- (Act ?name)
	=>
	(bind ?t (moment-defuzzify ?name))
	(assert (hardcore-factor (round ?t)))
	;(printout t "Selection: " (round ?t) crlf)
	(printout t crlf "Here are some games you might enjoy: " crlf))
	
	
(defrule ListWinners
	(declare (salience -2))
	
	?f <- (valid-game ?code)
	(game ?code ?hardcoreness ?name ?coop ?genre)
	(hardcore-factor ?valid-hardcoreness)
	(test (= ?hardcoreness ?valid-hardcoreness))
	
	?s <- (games-suggested ?num)
	(test (< ?num 3))
	=>
	(printout t ?name ": a " ?coop " game with " ?genre " elements." crlf)
	(retract ?f)
	
	(assert (games-suggested (+ ?num 1)))
	(retract ?s))
	
	
(defrule IfNoWinners
	(declare (salience -3))
	
	?s <- (games-suggested 0)
	=>
	(printout t "Sorry, I'm not sure of any games that fit your criteria." crlf)
	(printout t "This is most likely to happen in cases where you are looking for a long game that does not" crlf)
	(printout t "require much focus, or a short game that requires a lot of focus. These types of games are" crlf)
	(printout t "very rare. Board games also most commonly support 4 players." crlf)
	
	(retract ?s))

; FAMs are autogenerated code - see documentation

(defrule FamSF
  (valid-game SF)
  (GameLength SF)
  (GameFocus  SF)
  =>
  (assert (Act HA)))

(defrule FamAA
  (valid-game AA)
  (GameLength AA)
  (GameFocus  AA)
  =>
  (assert (Act HA)))

(defrule FamDI
  (valid-game DI)
  (GameLength DI)
  (GameFocus  DI)
  =>
  (assert (Act HB)))

(defrule FamRA
  (valid-game RA)
  (GameLength RA)
  (GameFocus  RA)
  =>
  (assert (Act HB)))

(defrule FamBO
  (valid-game BO)
  (GameLength BO)
  (GameFocus  BO)
  =>
  (assert (Act HB)))

(defrule FamSG
  (valid-game SG)
  (GameLength SG)
  (GameFocus  SG)
  =>
  (assert (Act HB)))

(defrule FamBH
  (valid-game BH)
  (GameLength BH)
  (GameFocus  BH)
  =>
  (assert (Act HC)))

(defrule FamCP
  (valid-game CP)
  (GameLength CP)
  (GameFocus  CP)
  =>
  (assert (Act HC)))

(defrule FamSE
  (valid-game SE)
  (GameLength SE)
  (GameFocus  SE)
  =>
  (assert (Act HC)))

(defrule FamSN
  (valid-game SN)
  (GameLength SN)
  (GameFocus  SN)
  =>
  (assert (Act HC)))

(defrule FamSP
  (valid-game SP)
  (GameLength SP)
  (GameFocus  SP)
  =>
  (assert (Act HC)))

(defrule FamTR
  (valid-game TR)
  (GameLength TR)
  (GameFocus  TR)
  =>
  (assert (Act HC)))

(defrule FamCA
  (valid-game CA)
  (GameLength CA)
  (GameFocus  CA)
  =>
  (assert (Act HC)))

(defrule FamCO
  (valid-game CO)
  (GameLength CO)
  (GameFocus  CO)
  =>
  (assert (Act HC)))

(defrule FamHA
  (valid-game HA)
  (GameLength HA)
  (GameFocus  HA)
  =>
  (assert (Act HC)))

(defrule FamSH
  (valid-game SH)
  (GameLength SH)
  (GameFocus  SH)
  =>
  (assert (Act HC)))

(defrule FamDE
  (valid-game DE)
  (GameLength DE)
  (GameFocus  DE)
  =>
  (assert (Act HC)))

(defrule FamDM
  (valid-game DM)
  (GameLength DM)
  (GameFocus  DM)
  =>
  (assert (Act HD)))

(defrule FamGT
  (valid-game GT)
  (GameLength GT)
  (GameFocus  GT)
  =>
  (assert (Act HD)))

(defrule FamSW
  (valid-game SW)
  (GameLength SW)
  (GameFocus  SW)
  =>
  (assert (Act HD)))

(defrule FamSC
  (valid-game SC)
  (GameLength SC)
  (GameFocus  SC)
  =>
  (assert (Act HD)))

(defrule FamPA
  (valid-game PA)
  (GameLength PA)
  (GameFocus  PA)
  =>
  (assert (Act HD)))

(defrule FamWO
  (valid-game WO)
  (GameLength WO)
  (GameFocus  WO)
  =>
  (assert (Act HD)))

(defrule FamLW
  (valid-game LW)
  (GameLength LW)
  (GameFocus  LW)
  =>
  (assert (Act HD)))

(defrule FamFT
  (valid-game FT)
  (GameLength FT)
  (GameFocus  FT)
  =>
  (assert (Act HD)))

(defrule FamSR
  (valid-game SR)
  (GameLength SR)
  (GameFocus  SR)
  =>
  (assert (Act HD)))

(defrule FamQA
  (valid-game QA)
  (GameLength QA)
  (GameFocus  QA)
  =>
  (assert (Act HD)))

(defrule FamAF
  (valid-game AF)
  (GameLength AF)
  (GameFocus  AF)
  =>
  (assert (Act HD)))

(defrule FamCL
  (valid-game CL)
  (GameLength CL)
  (GameFocus  CL)
  =>
  (assert (Act HD)))

(defrule FamAQ
  (valid-game AQ)
  (GameLength AQ)
  (GameFocus  AQ)
  =>
  (assert (Act HE)))

(defrule FamDW
  (valid-game DW)
  (GameLength DW)
  (GameFocus  DW)
  =>
  (assert (Act HE)))

(defrule FamCH
  (valid-game CH)
  (GameLength CH)
  (GameFocus  CH)
  =>
  (assert (Act HE)))

; end of autogenerated code

