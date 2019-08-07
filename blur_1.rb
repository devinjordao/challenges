class Image
  def initialize(pic)
    @image = pic
  end

  def output_image
    @image.each do |output|
      puts output.each { |p| p }.join
    end
  end


end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image