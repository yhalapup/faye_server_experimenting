require 'faye'
require 'permessage_deflate'
require_relative 'app'

use Faye::RackAdapter, :mount => '/faye', :timeout => 25 do |bayeux|
    # bayeux.add_extension(MyExtension.new)
    bayeux.add_websocket_extension(PermessageDeflate)
end

run Sinatra::Application