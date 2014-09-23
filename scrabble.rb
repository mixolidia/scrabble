class Scrabble
  attr_accessor :word, :array_of_words

  def initialize(word)
    @word = word
    @array_of_words = :word.chars
  end

  LETTERS = {a: 1, e: 1, i: 1, o: 1, u: 1, l: 1, n: 1, r: 1, s: 1, t: 1,
              d: 2, g: 2,
              b: 3, c: 3, m: 3, p: 3,
              f: 4, h: 4, v: 4, w: 4, y: 4,
              k: 5,
              j: 8, x: 8,
              q: 10, z: 10
            }

  def self.score(word)
    error = self.word_error(word)
    if !error
      sum = 0
        word.downcase.chars.each { |l| sum += LETTERS[l.to_sym] }
        return sum
    else
      raise NameError, "Please enter a word."
    end
  end

  def self.highest_score_from(array_of_words)
    high_score = 0
    highest_word = ""
    array_of_words.each do |w|
    # { |w| self.score(w) >= high_score }
      if self.score(w) >= high_score
        highest_word = w
        high_score = self.score(w)
      end
    end
      return highest_word
  end

  def fewest_letters

  end

  def self.word_error(word)
    if word.class == String
      return nil
    elsif word.class == Fixnum
      return "Error"
    end

  end

end
