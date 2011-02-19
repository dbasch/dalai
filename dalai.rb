require 'sinatra'
require './markov'

get '/' do
    "hello"
"""

    m = MarkovTool.new
    w = m.words_from_file('dalai.txt')
    m.markov_data_from_words( w )
    # create a paragraph and display it
    p = m.get_paragraph
    p
    """
end
