require "nice_uuid/version"

module NiceUuid
  DEFAULT_NUMBER_OF_WORDS = 4
  DICTIONARY_PATH = File.dirname(__FILE__) + '/length_ordered_sanitized_dictionary.txt'

  def self.generate(maximum=36)
    10000.times do
      @solution = possible_nice_uuid
      break if @solution.length <= maximum
    end
    @solution
  end

  private

  def self.possible_nice_uuid
    bundle_of_words.map(&:strip).shuffle.join('-')
  end

  def self.bundle_of_words
    array_of_all_words.sample(DEFAULT_NUMBER_OF_WORDS)
  end

  def self.array_of_all_words
    @array_of_all_words ||= File.readlines(DICTIONARY_PATH)
  end
end
