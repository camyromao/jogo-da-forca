class Game
  attr_accessor :word
  def initialize(word="camyla")
    @word = word
    @chances = 5
    @letters_guessed = []
    @word_guessed = false
  end

  def reveal_word
    revealed = word.split('').collect do |l|  
      if @letters_guessed.include? l 
        l
      else
        '_'
      end
    end.join(' ')
    @word_guessed = revealed.exclude? "_"

    revealed
  end

  def guess(letter)
    return if @letters_guessed.include? letter

    if @word.include? letter
      @letters_guessed.append(letter)
    else
      @chances -= 1
    end

    won() if @word_guessed
    game_over() if @chances.zero?
  end

  def show()
    puts "#{@chances} chances left"
    puts reveal_word
  end
end
