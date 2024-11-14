#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams;")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
	if [[ $YEAR != "year" ]]
	then
		#check if each team is in the teams table
		WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		echo "WINNER is: $WINNER"
		OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
		#if not found (winner)
		if [[ -z $WINNER_ID ]]
		then
			#add winner to teams table
			INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
			if [[ $INSERT_WINNER == "INSERT 0 1" ]]
			then
				echo Inserted into teams, $WINNER
			fi

			#get new winner_id
			WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		fi

		#if not found (opponent)
                if [[ -z $OPPONENT_ID ]]
                then
                        #add opponetn to teams table
                        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
                        if [[ $INSERT_OPPONENT == "INSERT 0 1" ]]
                        then
                                echo Inserted into teams, $OPPONENT
                        fi
			#get new opponent_id
			OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
                fi

		
		#enter data to games
		INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
		if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
		then
			echo Inserted into teams, $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
		fi
	fi
done
