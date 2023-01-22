class ApplicationController < ActionController::Base
  def blank_square_form
    render({:template => "calc_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("number").to_f
    @square_of_num = @num * @num

    render({:template => "calc_templates/square_results.html.erb"})
  end

  def blank_sqroot_form
    render({:template => "calc_templates/sqroot_form.html.erb"})
  end
  
  def calculate_sqroot
    @num = params.fetch("number").to_f
    @sqroot_of_num = @num ** 0.5
    
    render({:template => "calc_templates/sqroot_results.html.erb"})
  end

  def blank_payment_form
    render({:template => "calc_templates/payment_form.html.erb"})
  end

  def calculate_payment
    @apr = params.fetch("user_apr").to_f/100
    @num_years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
    @payment = (@apr * @principal) / (1 - (1 + @apr)**((-1)*@num_years))

    render({:template => "calc_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render({:template => "calc_templates/random_form.html.erb"})
  end
  
  def calculate_random

    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @rand = rand(@lower..@upper)
    
    render({:template => "calc_templates/random_results.html.erb"})
  end

end
