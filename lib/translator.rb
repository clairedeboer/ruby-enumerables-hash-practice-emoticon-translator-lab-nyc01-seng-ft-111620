# require modules here
require 'pry'

def load_library(file_path)
  # code goes here
  require "yaml"
  emoticons = YAML.load_file('./lib/emoticons.yml')
 emoticons.map do |key, values_array|
   [key, {
  :english => values_array[0],
  :japanese => values_array[1]
  }]
  end.to_h
  
end

def get_japanese_emoticon(file_path, english_emoticon)
  # code goes here
  emoticons = load_library(file_path)
<<<<<<< HEAD
  emoticons.each do |emotion, values_hash|
=======
  emoticons.each do |key, values_hash|
>>>>>>> 227bbf9de947ffc8193d802b7b9194f2c892aca8
    if english_emoticon == values_hash[:english]
      return values_hash[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, japanese_emoticon)
  # code goes here
  emoticons = load_library(file_path)
<<<<<<< HEAD
  emoticons.each do |emotion, values_hash|
    if japanese_emoticon == values_hash[:japanese]
      return emotion
=======
  emoticons.each do |key, values_hash|
    if japanese_emoticon == values_hash[:japanese]
      binding.pry
      return key
>>>>>>> 227bbf9de947ffc8193d802b7b9194f2c892aca8
    end
  end
  "Sorry, that emoticon was not found"
end