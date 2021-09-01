class Game
  attr_accessor :word
  def initialize(word="camyla")
    @word = word
    @chances = 5
    @letters_guessed = []
    @word_guessed = false
  end

  def reveal_word
    word.split('').collect do |l|  
      if @letters_guessed.include? l 
        l
      else
        '_'
      end
    end.join(' ')
  end

  def guess(letter)
    return if @letters_guessed.include? letter

    @letters_guessed.append(letter)

    @chances -= 1 unless @word.include? letter
  end

  def won?
    reveal_word.exclude? "_"
  end

  def game_over?
    @chances.zero?
  end

  def show()
    puts "#{@chances} chances left"
    puts reveal_word
  end
end
