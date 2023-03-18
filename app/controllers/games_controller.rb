require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{@word}")

    if response == true
      @score = 'Congratulations'
    else
      @score = 'Sorry, it is not a word'
    end
  end
end
