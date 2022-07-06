class SessionsController < ApplicationController

	def index
		session[:session_hello] ||= "hello"
		cookies[:cookies_hello] ||= "hello"
		render json: { session: session, cookies: cookies.to_hash }
	end

end
