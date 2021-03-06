module ApplicationHelper
    ## Moje funkcje konwertujace date
   def add_zero(num)
    if(num.to_s.length == 1)
      return "0" + num.to_s
    end
    return num.to_s
  end
  
  def convert_rails_date_to_html_date(date)
    str_tab  = date.to_s.split(' ')
    str_tab[2].insert(3, ":")
    return str_tab[0] + "T" + str_tab[1] + str_tab[2]
  end
  
  def format_date(date)
    week_days_pl = ["Niedziela", "Poniedzialek", "Wtorek", "Sroda", "Czwartek", "Piatek", "Sobota"]
    month_days_pl = ["Stycznia", "Lutego", "Marca", "Kwietnia", "Maja", "Czerwca", "Lipca", "Sierpnia", "Wrzesnia", "Pazdziernika", "Listopada", "Grudnia"]
    str = week_days_pl[date.wday].to_s + ", "
    str += date.day.to_s + ". " + month_days_pl[date.month - 1].to_s + " " + date.year.to_s + ", "
    str += add_zero(date.hour) + ":" + add_zero(date.min)
    return  str
  end
end
