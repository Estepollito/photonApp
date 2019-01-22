class LedsController < ApplicationController
  
  def index
  	@info = ""
  end

  def encender
  	@info = Apicomunicacion.for("on")
  end

  def apagar
  	@info = Apicomunicacion.for("off")
  end
end
