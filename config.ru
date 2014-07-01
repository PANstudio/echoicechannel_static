# encoding: UTF-8

use Rack::Deflater

use Rack::Static,
  :urls => ['/'],
  :root => "public",
  :index => 'index.html',
  :header_rules => [[:all, {'Cache-Control' => 'public, max-age=3600'}]]

run lambda { |env|   }