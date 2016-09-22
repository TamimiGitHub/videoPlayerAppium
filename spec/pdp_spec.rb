require_relative 'helper_spec'
require_relative '../pages/lander'
require_relative '../pages/pdp'

describe 'PDP' do

  before(:each) do
    @lander = Lander.new(@driver)
    @pdp = Pdp.new(@driver)
  end

  it 'assert gray, image, rounded displayed', :smoke do
    expect(@lander.featured_poster_displayed?).to be_truthy
    sleep(1)
    @lander.click_featured
    expect(@pdp.title_displayed?).to be_truthy
    sleep(1)
    @pdp.ui_elements do |ui_element|
       puts ui_element
       expect(@pdp.ui_element_displayed?(ui_element)).to be_truthy
     end
    expect(@pdp.get_Title == 'Big Buck Bunny')
  end

end # PDP
