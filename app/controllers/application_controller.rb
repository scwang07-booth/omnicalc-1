class ApplicationController < ActionController::Base
  def blank_square_form
    render({:template => "calc_templates/square_form.html.erb"})
    
  end
end
