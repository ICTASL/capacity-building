# Rakefile
require 'json'

desc "Generate search.json for Simple-Jekyll-Search"
task :generate_search do
  require 'yaml'
  search = []
  
  # Iterate over all pages
  Jekyll::Hooks.register :site, :post_write do |site|
    site.pages.each do |page|
      next if page.data['hidden'] # Skip hidden pages if any
      
      # Include only English, Sinhala, and Tamil pages
      if ['en', 'si', 'ta'].include?(page.data['lang'])
        search << {
          "title" => page.data['title'],
          "url" => "#{site.baseurl}#{page.url}"
        }
      end
    end
    
    # Write to search.json
    File.open("#{site.dest}/search.json", 'w') do |file|
      file.write(JSON.pretty_generate(search))
    end
    
    puts "search.json generated with #{search.size} entries."
  end
end
