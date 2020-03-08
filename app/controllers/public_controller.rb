class PublicController < ApplicationController
  def main
  	if account_signed_in?
  		redirect_to dashboard_path, flash:{ success: "Logado com sucesso. Bem Vindo ao Ipet!"} and return
  	end

  	@properties = Property.latest
  end
end
