require_relative 'page'

class Pdp < Page
  BACK_BUTTON_LOCATOR = { name: 'Btn-Back' }
  DURATION_LOCATOR = { name: 'placeholder-duration' }
  GENRE_LOCATOR = { name: 'placeholder-genre' }
  RELEASE_YEAR_LOCATOR = { name: 'placeholder-releaseYear' }
  MATURITY_RATING_LOCATOR = { name: 'placeholder-maturityRating' }
  TITLE_LOCATOR = { name: 'placeholder-title' }
  STAR_1_LOCATOR = { name: 'Star-1' }
  STAR_2_LOCATOR = { name: 'Star-2' }
  STAR_3_LOCATOR = { name: 'Star-3' }
  STAR_4_LOCATOR = { name: 'Star-4' }
  STAR_5_LOCATOR = { name: 'Star-5' }
  DESCRIPTION_LOCATOR = { name: 'placeholder-description' }
  WATCH_NOW_BUTTON_LOCATOR = { name: 'Btn-WatchNow' }

  def title_displayed?
    is_displayed? TITLE_LOCATOR
  end

  def ui_elements
    yield BACK_BUTTON_LOCATOR
    yield DURATION_LOCATOR
    yield GENRE_LOCATOR
    yield RELEASE_YEAR_LOCATOR
    yield MATURITY_RATING_LOCATOR
    yield TITLE_LOCATOR
    yield STAR_1_LOCATOR
    yield STAR_2_LOCATOR
    yield STAR_3_LOCATOR
    yield STAR_4_LOCATOR
    yield STAR_5_LOCATOR
    yield DESCRIPTION_LOCATOR
    yield WATCH_NOW_BUTTON_LOCATOR
  end

  def ui_element_displayed?(ui_element)
    is_displayed? ui_element
  end

  def click_back
    click BACK_BUTTON_LOCATOR
  end

  def click_watch_now
    click WATCH_NOW_BUTTON_LOCATOR
  end

  def get_Title
    get_text(TITLE_LOCATOR)
  end

  def get_Duration
    get_text(DURATION_LOCATOR)
  end


end # Buttons
