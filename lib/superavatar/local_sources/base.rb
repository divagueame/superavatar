module Superavatar
  module LocalSources
    class Base
      @@svg_files = {}

      def self.sample_svg
        @@svg_files.values.sample
      end
    end
  end
end
