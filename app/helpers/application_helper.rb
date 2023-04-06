module ApplicationHelper
  def food_image_tag(food)
    image_url =
      if food.image.attached?
        url_for(food.image)
      else
        'default_food_image.png'
      end
    image_tag(image_url, alt: food.name)
  end
end
