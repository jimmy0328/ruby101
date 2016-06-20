require 'roo'
require 'iconv'


class Hotel
  def initialize(name, address, coordinates)
    @name = name
    @address = address
    @coordinates = coordinates
  end

  def print
    "#{@name} | #{@address} | #{@coordinates}"
  end
end

class Excel

  def self.import(file_path)
    xlsx = Roo::Spreadsheet.open(file_path)
    xlsx.first_row.upto(xlsx.last_row) do |row|
      name = xlsx.cell(row,'A')
      address = xlsx.cell(row,'B')
      coordinates = xlsx.cell(row,'C')
      puts Hotel.new(name, address, coordinates).print
    end
  end

end

Excel.import("../hotels.xlsx")
