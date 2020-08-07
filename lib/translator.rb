# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  emoticons = YAML.load_file("./lib/emoticons.yml")
  emo_library = emoticons.each_with_object({}) do |(key, value), new_array|
    if !new_array[key]
      new_array[key] = {
        :english => value[0],
        :japanese => value[1]
      }
    end
  end 
  emo_library
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emos = load_library(file_path)
  emos.each do |key, value|
   #binding.pry
    if emos[key][value] == [:japanese]
      return emos[key]
    end
    #binding.pry
  end 
  #binding.pry 
end

def get_japanese_emoticon
  # code goes here
  emo_library = load_library(file_path)
  emo_library.each do |key, value|
    #binding.pry 
  end 
  #binding.pry 
end
