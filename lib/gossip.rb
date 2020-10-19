require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << ["#{@author}", "#{@content}"]
    end
  end

  def self.all
    all_gossips = []
    CSV.read("./db/gossip.csv").each do |csv_line|
      all_gossips << Gossip.new(csv_line[0], csv_line[1])
    end
    return all_gossips
  end

  def self.find(id)
  CSV.read("./db/gossip.csv")[id]
  end

  def self.update(author, content, index)
    all=CSV.read("./db/gossip.csv")
    all[index]=[author, content]
    file=CSV.open("./db/gossip.csv", "w")
    all.each do |gossip|
      file.puts(gossip)
    end
    file.close
    p CSV.read("./db/gossip.csv")
  end
end
