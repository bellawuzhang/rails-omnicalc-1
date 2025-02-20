class MathController < ApplicationController

  def homepage
    render({ :template => "math_templates/homepage"})
  end

  def square_new
    render({ :template => "math_templates/new_square_calc"})
  end

  def square_results
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
    render({ :template => "math_templates/square_results"})
  end

  def square_root_new
    render({ :template => "math_templates/new_square_root_calc"})
  end

  def square_root_results
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 0.5
    render({ :template => "math_templates/square_root_results"})
  end

  def payment_new
    render({ :template => "math_templates/new_payment_calc"})
  end

  def payment_results
    @the_apr_input = params.fetch("apr_input").to_f
@the_apr_input_converted = @the_apr_input.to_fs(:percentage, {:precision => 4})
@the_years_input = params.fetch("years_input").to_f
@the_principal_input = params.fetch("principal_input").to_f

@the_apr_output = @the_apr_input / (100 * 12)
@the_months_output = @the_years_input * 12
@the_numerator = @the_apr_output * @the_principal_input
@the_denominator = (1-(1 + @the_apr_output) ** -@the_months_output)
@the_result = (@the_numerator / @the_denominator).to_fs(:currency)
    render({ :template => "math_templates/payment_results"})
  end
 
  def random_new
    render({ :template => "math_templates/new_random_calc"})
  end

  def random_results
    @the_min_input = params.fetch("min_input").to_f
@the_max_input = params.fetch("max_input").to_f
@the_result = rand(@the_min_input..@the_max_input)
    render({ :template => "math_templates/random_results"})
  end

end
