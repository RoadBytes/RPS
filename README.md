# Launch School OOP Rock Paper Scissors!

To play:

* copy the repo and
* enter `$ ruby rps_game.rb` in the terminal from the root folder

# For reviewers, thanks for taking the time to read through my app.

FYI, there were bonus features and I tried them out and saved the code with different branches.

* master
  * has 'lizard' and 'spock' moves
  * also has 'personalities' for computers here by adding move favored moves to the moves array so there is a bias when it is sampled

* smart-compter-move-choice
  * has a way for the computer to play 'smarter'
  * it creates an array with less losing moves in it so that when it's `sample`d it will bias the non losing moves
  * for the test,
    * https://github.com/RoadBytes/RPS/blob/smart-compter-move-choice/spec/models/computer_spec.rb


* history-of-moves
  * adds a `moves` method, that references an array, to the `Player` class so `Human` and `Computer` can store their moves played in the game

* rock-paper-scissor-classes
  * This made the `Move#compare` method much easier to implement.

Note: I added tests and I liked learning about how to stub out `gets`.  I found out that there is a `Kernel` module mixed into `Object` so that to stub our `gets`, I can implement something like:

~~~
player = Human.new
allow(player).to receive(:gets).and_return("paper\n")
~~~

Anyway, on to the next one.  Any honest feedback will be appreciated and considered. Cheers!
