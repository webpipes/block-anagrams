Block       = require('node-webpipe').Block
generator   = new (require 'words').WordGenerator

generator.generateTree () ->
  new Block ->
    @name "Anagrams"
    @description "Generates a list of anagrams for a word."
    @input "word", "string", "A single word, or letters."
    @output "words", "list", "A list of anagrams."
    @handle (inputs, callback) ->
      outputs =
        words: generator.getAnagrams(inputs.word)
      callback false, outputs
    @listen()




