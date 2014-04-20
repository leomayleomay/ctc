module Ctc
  class Ctc2Kanji
    def self.find(kanji)
      mappings.fetch(kanji) do
        raise Ctc::CtcNotFoundError.new("China Telelgraph Code (CTC) not found.")
      end
    end

    private
    def self.mappings
      return @mappings if @mappings

      yaml_file = File.expand_path("../../config/ctc_2_kanji.yml", File.dirname(__FILE__))
      @mappings = YAML.load_file(yaml_file)
      @mappings
    end
  end
end
