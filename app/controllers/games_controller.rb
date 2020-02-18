require 'open-uri'
require 'json'

class GamesController < ApplicationController

LETTERS = Array.new(10){('A'..'Z').to_a.sample}


  def new

    @letters = LETTERS
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
  end

  def score
    raise
    @word = params["word"]
    @letters = ["letters"]

    json = JSON.parse(URL.read)
    @result = LETTERS

    # return json['found']
  end
end
