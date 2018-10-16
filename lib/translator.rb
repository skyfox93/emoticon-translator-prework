  
def load_library(file)
  require 'yaml'
  stuff=YAML.load_file(file)
  newhash={"get_meaning"=> {}, "get_emoticon" => {}}
  stuff.each do|meaning,emoticons|
    newhash["get_meaning"][emoticons[1]]=meaning
    newhash["get_emoticon"][emoticons[0]]=meaning
  end
  newhash
end
def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library("./lib/emoticons.yml")