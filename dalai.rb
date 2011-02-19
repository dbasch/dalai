require 'sinatra'
require './markov'

get '/' do
    m = MarkovTool.new
    w = m.words_from_file('dalai.txt')
    m.markov_data_from_words( w )
    # create a paragraph and display it
    p = m.get_paragraph
    '<a href="/">Give me another pearl of wisdom!</a> (or just hit refresh)<p/><H1>' + p + '</H1>'
end
