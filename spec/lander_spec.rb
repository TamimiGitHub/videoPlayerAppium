# require_relative 'helper_spec'
# require_relative '../pages/lander'

# describe 'Lander' do
#
#   before(:each) do
#     @page = Page.new(@driver)
#     @lander = Lander.new(@driver)
#     puts 'Yo wassup'
#   end
#
#   it 'assert each menu item is displayed', :smoke do
#     puts 'assert each menu item is displayed'
#     @lander.featured_poster_displayed?
#     @lander.ui_elements do |ui_element|
#        puts ui_element
#        expect(.ui_element_displayed?(ui_element)).to be_truthy
#      end
#   end
#
#   it 'click each menu item', :regression do
#     puts '14'
#     @lander.ui_elements do |ui_element|
#       puts '15'
#       expect(.page_title_displayed?).to be_truthy
#       puts '16'
#       @lander.click_ui_element(ui_element)
#       puts '17'
#       expect(.page_title_displayed?).to be_falsey
#       puts '18'
#       @page.click_back
#     end
#   end
#
# end # Lander
