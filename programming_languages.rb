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

def lang_array
  langs = []

  language_hash.each {|style, language_name|
  # :oo, :functional
    langs << language_name.keys
  }

  langs.flatten!.uniq!
end

#####
#####

def type_array
  type_array = []

  language_hash.each {|style, language_name|
  # style = :oo, :functional
    language_name.each {|lang, type|
    # lang = :ruby, :javascript, :python, etc.
      type_array << type
    }
  }

  type_array
end

#####
#####

def reformat_languages(languages)
  new_hash = {}
  lang_style = []

  new_hash = lang_array.zip(type_array)

  new_hash.each {|language_name, info|
  # language_name = :ruby, :javascript, :clojure, etc etc
      language_hash.each {|style, language_name|
        # :oo, :functional
      langs << language_name.keys
    }
  }
  new_hash
end

#####
#####

reformat_languages(language_hash)
