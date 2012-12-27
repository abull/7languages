module ActsAsCsv
  def self.included(base)
      base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file     = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def csv_column(row_name)
      index = @headers.index(row_name)
      @csv_contents.map{|row| row[index]}
    end

    def each(&block)
      @csv_contents.each do |row|
        block.call(CsvRow.new(@headers, row))
      end
    end
  end
end

class CsvRow
  def initialize(headers, row_array)
    @headers = headers
    @row = row_array
  end
  def method_missing(method_name, *args, &block)
    index = @headers.index(method_name.to_s)
    @row[index]
  end
end

class RubyCsv # no inheritance! You can mix it in include ActsAsCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new

puts "headers are: #{csv.headers}"
puts "contents are: #{csv.csv_contents}"

csv.each{|row| puts row.send(csv.headers[1])}