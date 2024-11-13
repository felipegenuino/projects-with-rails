# update_readme.rb
## Tornar o Script Executável: $ ruby update_readme.rb
## Executar o Script:: $ ruby update_readme.rb

require 'fileutils'

README_FILE = 'README.md'

# Pega todos os diretórios na raiz (ignorando arquivos e pastas escondidas)
PROJECTS_DIR = Dir.glob("*/").select { |f| File.directory?(f) && !f.start_with?('.') }

# Início do conteúdo principal do README
File.open(README_FILE, 'w') do |file|
  file.puts "# Desafio: 30 Projetos em Ruby on Rails"
  file.puts
  file.puts "Lista de projetos:"
  file.puts

  PROJECTS_DIR.each_with_index do |project_dir, index|
    # Nome do projeto a partir do diretório
    project_name = project_dir.sub(/\/$/, '').gsub(/[-_]/, ' ').capitalize
    # Link do projeto para o README.md dentro da pasta do projeto
    file.puts "#{index + 1}. [#{project_name}](#{project_dir}README.md)"
  end
end
