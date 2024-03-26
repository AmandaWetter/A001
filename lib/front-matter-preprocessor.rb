RUBY_ENGINE == 'opal' ? (require 'front-matter-preprocessor/extension') : (require_relative 'front-matter-preprocessor/extension')

Asciidoctor::Extensions.register do
  preprocessor FrontMatterPreprocessor
end

Asciidoctor.convert_file '../_datenmodelle/A000.adoc', to: 'A000_Resultat.adoc'