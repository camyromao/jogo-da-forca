class Game
  attr_accessor :word
  def initialize(word="camyla")
    @word = word
    @chances = 5
    @letters_guessed = []
    @reveled_word = "_ _ _ _ _ _"
  end

  def reveal
  end

  def guess(letter)
    return if @letters_guessed.include? letter
    
    if @word.include? letter
      @letters_guessed.apped(letter)
      # reveal
      # show
    else
      @chances -= 1
      # show
    end

    # @chances.end? game_over()
  end

  def show()
    # limpa tela
    puts "#{@chances} chances left"
    puts @reveled_word
  end
end
