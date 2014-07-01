module ApplicationHelper

  def flash_to_bs_alert name
    case name
    when "notice"
      "alert-success"
    when "alert"
      "alert-danger"
    when "flash"
      "alert-info"
    else
      "alert-warning"
    end
  end

end
