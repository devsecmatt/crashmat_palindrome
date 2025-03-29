# frozen_string_literal: true

require_relative "crashmat_palindrome/version"

class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters of a string
  def letters
    the_letters = []
    for i in 0..self.length - 1
      if self[i].match(/[a-zA-Z]/)
        the_letters << self[i]
      end
    end
    the_letters.join
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.letters.downcase
    end
end
