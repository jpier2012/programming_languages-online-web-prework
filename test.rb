require 'pry'

def language_hash
  language_hash = {
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
end

#####
#####

def reformat_languages(languages)
  new_hash = {}
  style_array = []
  languages.each {|style, language|
  # style = :oo, :functional
  style_array = style
    language.each {|language_name, info|
    # language_name = :ruby, :javascript, :clojure, etc etc
      new_hash[language_name]

        new_hash[language_name] = info
      binding.pry
    }
  }
  new_hash
end

#####
#####

puts reformat_languages(language_hash)
