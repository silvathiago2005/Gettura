class PrincipalController < ApplicationController
  def index
  	if(     !(session[:cafe] != nil && session[:cafe] != '')     )
  		redirect_to '/'
  	end
  end
end
