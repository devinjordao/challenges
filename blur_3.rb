class Image
  def initialize(pic)
    @image = pic
  end

  def output_image
    @image.each do |output|
    puts output.join(" ")
    end
  end

  def blur(distance)
    distance.times do
      pic_location = []
      @image.each_with_index do |row, rowIndex|
        row.each_with_index do |col, colIndex|
          if col == 1
            pic_location << [rowIndex, colIndex]
          end
        end
      end
      pic_location.each do |row, col|
        @image[row-1][col] = 1 unless row == 0
        @image[row+1][col] = 1 unless row == @image.length-1
        @image[row][col-1] = 1 unless col == 0
        @image[row][col+1] = 1 unless col == @image[row].length-1
      end
    end
  end
end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur(2)
image.output_image
