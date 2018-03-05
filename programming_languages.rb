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
    language.each do |language, hash|
      hash[:style] = [style]
      new_hash << language
# add style to existing hash as Array
# add that hash to new hash
    end
    new_hash
    binding.pry
  end

end
