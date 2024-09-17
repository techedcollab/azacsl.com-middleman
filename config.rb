# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# Automatic reload changes to the website

activate :livereload

# Activate blog section for Middleman and rules blog posts adhere too

activate :blog do |blog|
  blog.permalink = 'blog/{title}.html'
  blog.layout = 'blog_layout.erb'
end

# Automattic clowncar image sizes on website

activate :automatic_clowncar,
  :sizes => {
    :small => 200,
    :medium => 400,
    :large => 600
  },
  :namespace_directory => %w(photos),
  :filetypes => [:jpg, :jpeg, :png]

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end
