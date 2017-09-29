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
	(BH (30 0) (60 1) (90 0))))

(deftemplate GameFocus
	-2 12 rating (
	(AQ (4 0) (8 1) (12 0))
	(BH (0 0) (4 1) ( 8 0))))

(deftemplate Act
	1 32 game2play (
		))

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

(defrule FAM1
	(valid-game AQ)
	(GameLength AQ)
	(GameFocus  AQ)
	=>
	(assert (Act AQ)))

(defrule DebugPrint
	(declare (salience -1))
	?sel <- (Act ?name)
	=>
	;(bind ?t (maximum-defuzzify ?name))
	(printout t "Selection " ?name ": " crlf)
)

