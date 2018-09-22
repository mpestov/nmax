# frozen_string_literal: true

require 'optparse'

module Nmax
  # The `nmax` command
  class Command
    def initialize(arguments)
      @count_max_numbers = arguments.first.to_i if number? arguments.first
    end

    def parse
      OptionParser.new do |parser|
        parser.banner = <<~HELP_MESSAGE
          Usage: INPUT | bin/nmax n
          Description: Reads input and displays n maximum digits in input content
          Example: cat some_file.txt | bin/nmax 1
        HELP_MESSAGE
      end.parse!

      raise 'Need to specify INPUT to run command' if STDIN.tty?

      process
    end

    private

    def process
      numbers = []
      str_number = ''
      STDIN.each_char do |char|
        if number? char
          str_number += char
        elsif !str_number.empty?
          numbers << str_number.to_i
          str_number = ''
        end
      end
      puts numbers
        .uniq
        .sort { |x, y| y <=> x }
        .first(@count_max_numbers || numbers.length)
        .join ' '
    end

    def number?(string)
      (/^\d+$/ =~ string) != nil
    end
  end
end
