class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

  def files
    Dir.entries(path).select {|entry| entry.include?(".mp3") }
    #only wants .mp3 files
    #@files = []
    #file = Dir.entries(@path)
    #file.each do |file|
    #  if file.include?("mp3")
    #    @files << file
  #end
#end
#@files
end
end
