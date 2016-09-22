require_relative 'page'

class Lander < Page

  FEATURED_POSTER_LOCATOR = { name: 'Big Buck Bunny' }
  THUMBNAIL1_POSTER_LOCATOR = { name: 'Caminandes: Llama Drama' }
  THUMBNAIL2_POSTER_LOCATOR = { name: 'Tears of Steel' }
  THUMBNAIL3_POSTER_LOCATOR = { name: 'Sintel' }
  THUMBNAIL4_POSTER_LOCATOR = { name: 'Elephants Dream' }


  def featured_poster_displayed?
    is_displayed? FEATURED_POSTER_LOCATOR
  end

  def ui_elements
    yield FEATURED_POSTER_LOCATOR
    yield THUMBNAIL1_POSTER_LOCATOR
    yield THUMBNAIL2_POSTER_LOCATOR
    yield THUMBNAIL3_POSTER_LOCATOR
    yield THUMBNAIL4_POSTER_LOCATOR
  end

  def ui_element_displayed?(ui_element)
    is_displayed? ui_element
  end

  def click_ui_element(ui_element)
    click ui_element
  end

  def click_featured
    click FEATURED_POSTER_LOCATOR
  end

end # Lander
