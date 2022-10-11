defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    8.0*hourly_rate
    # Please implement t e daily_rate/1 function
  end

  def apply_discount(before_discount, discount) do
    before_discount*(1-discount/100)
    # Please implement the apply_discount/2 function
  end

  def monthly_rate(hourly_rate, discount) do
    ceil(22*daily_rate(hourly_rate)*(1-discount/100))
    # Please implement the monthly_rate/2 function
  end

  def days_in_budget(budget, hourly_rate, discount) do
    Float.floor(budget / apply_discount(daily_rate(hourly_rate), discount), 1)
  end
end
