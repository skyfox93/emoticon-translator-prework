  
def load_library(file)
  require 'yaml'
  stuff=YAML.load_file(file)
  newhash={"get_meaning"=> {}, "get_emoticon" => {}}
  stuff.each do|meaning,emoticons|
    newhash["get_meaning"][emoticons[1]]=meaning
    newhash["get_emoticon"][emoticons[0]]=emoticons[1]
  end
  newhash
end
def get_japanese_emoticon(file,emoticon)
answer=load_library(file)["get_emoticon"][emoticon]
"Sorry, that emoticon was not found"
answer if answer != "nil"
end

def get_english_meaning
  # code goes here
end

puts get_japanese_emoticon("./lib/emoticons.yml",":)")