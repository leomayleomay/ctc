class Kanji2Ctc
  def self.find(kanji)
    mappings.fetch(kanji) do
      raise Ctc::KanjiNotFoundError.new("Kanji not found.")
    end
  end

  private
  def self.mappings
    return @mappings if @mappings

    yaml_file = File.expand_path("../../config/kanji_2_ctc.yml", File.dirname(__FILE__))
    @mappings = YAML.load_file(yaml_file)
    @mappings
  end
end
