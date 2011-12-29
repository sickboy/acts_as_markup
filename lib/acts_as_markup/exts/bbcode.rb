require 'rbbcode'

# This allows a us to create a wrapper object similar to those provided by the
# Markdown and Textile libraries. It stores the original and formated HTML text
# in instance variables. It also stores the SimpleMarkup parser objects in
# instance variables.
#
class BBCodeText < String
  attr_reader :text
  attr_reader :html

  def initialize(str, *options)
    super(str)
    @text = str.to_s
    @html = RbbCode::Parser.new.parse(@text)
  end

  def to_html
    @html
  end
end
