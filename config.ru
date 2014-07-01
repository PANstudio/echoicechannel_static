# encoding: UTF-8
require 'rack'
require 'rack/contrib/try_static'
require 'rack/contrib/not_found'


use Rack::Deflater

use Rack::TryStatic, 
  :urls => ['/'],
  :root => "public",
  :index => 'index.html',
  :header_rules => [[:all, {'Cache-Control' => 'public, max-age=3600'}]]

run Rack::NotFound.new('public/404.html')
