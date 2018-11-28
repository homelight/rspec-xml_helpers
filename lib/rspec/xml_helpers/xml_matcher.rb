# frozen_string_literal: true

require 'diff-lcs'
require 'diffy'
require 'stringio'

module RSpec
  module XmlHelpers
    # @api private
    class XmlMatcher

      def initialize(expected, colorize: true)
        @expected = XmlHelpers.normalize_xml(expected)
        @diff_format = colorize ? :color : :text
      end

      def matches?(actual)
        @actual = XmlHelpers.normalize_xml(actual)
        @expected == @actual
      rescue ArgumentError => error
        @wrong_type_error_message = error.message
        false
      end

      def failure_message
        @wrong_type_error_message || diff_json_error_message
      end

      def failure_message_when_negated
        'expected XML value not to be equal'
      end

      def diff_json_error_message
        message = StringIO.new
        message << "expected: #{@expected}\n\n"
        message << "got: #{@actual}\n\n"
        message << "Diff: #{diff}"
        message.string
      end

      def diff
        diff = Diffy::Diff.new(@expected, @actual).to_s(@diff_format)
        diff.lines[0..-2].join
      end

    end
  end
end
