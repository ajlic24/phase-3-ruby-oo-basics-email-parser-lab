# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
    attr_reader :string_of_emails

    def initialize(string_of_emails)
        @string_of_emails = string_of_emails
    end

    def parse
        @string_of_emails.scan(/\w+\@\w+\.\w+/).uniq
    end
end

example = EmailAddressParser.new("john@doe.com, person@somewhere.org")
example.parse