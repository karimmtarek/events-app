module EventsHelper
  def format_price(event)
    if event.free?
      content_tag(:strong, "Free")
    else
      number_to_currency(event.price)
    end
  end

  def image_for(event)
    if event.image_name.blank?
      image_tag 'img-400x250.gif'
    else
      image_tag event.image_name
    end
  end
end
