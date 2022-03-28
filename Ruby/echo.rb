# print ARGV[0]

class Echo
  def self.echo(text)
    print text
  end
end

Echo.echo(ARGV[0])