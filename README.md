
# Rock, Paper, Scissors Game

# Initial Thoughts

I'm learning to work on OOP programming and it's a bit overwhelming.  Well first things first, I'll get going on this game.

# Notes on OOP

1. Write a textual description of the problem or exercise.
2. Extract the major nouns and verbs from the description.
3. Organize and associate the verbs with the nouns.
4. The nouns are the classes and the verbs are the behaviors or methods.

# Finding a Description

We don't think about the flow at all.
First write out a textual description of RPS

~~~
RPS is a two player game where each player chooses Rock, Paper, or Scissors.

- rock > scissors
- scissors > paper
- paper > rock

same move is a tie
~~~

# Here is a potential extraction

~~~
Nouns: player, move, rules
Verbs: choose, compare
~~~

Organizing Nouns and verbs

~~~
Player
  - choose
Move
Rule

- compare
~~~

# Making an engine

~~~
class RPSGame
  def initialize
  end

  def play
  end
end
~~~

# focusing on the `play` method

~~~
def play
  display_welcome_message
  get_human_move
  get_computer_move
  display_winner
  display_goodbye_message
end
~~~

if the human and computer were players, they would have `#choose`
