require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
new_hash = {}

  languages.each do |style, language|
    language.each do |language_name, hash|
      hash[:style] = [style]
        new_hash[language] = hash
    end
  end
  new_hash
  binding.pry

end

{:ruby=>{:type=>"interpreted", :style=>[:oo]},
 :javascript=>{:type=>"interpreted", :style=>[:functional]},
 :python=>{:type=>"interpreted", :style=>[:oo]},
 :java=>{:type=>"compiled", :style=>[:oo]},
 :clojure=>{:type=>"compiled", :style=>[:functional]},
 :erlang=>{:type=>"compiled", :style=>[:functional]},
 :scala=>{:type=>"compiled", :style=>[:functional]}}
