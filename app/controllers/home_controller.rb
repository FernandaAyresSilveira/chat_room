
class HomeController < ApplicationController
	
  def index
    @message = Message.new
    @messages =Message.all 
  end
  def last
  	#@msg =Message.last(1)
  	@msg =Message.all
    #render inline: "<% @msg.each do |chat| %> <%= chat.created_at.strftime('%m/%d/%Y %H:%M') %> - <%= auto_link(chat.message) %><% end %>"
    render inline: "<% @msg.each do |chat| %> <%= auto_link(chat.message) %><% end %>"
  end
end
