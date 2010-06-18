#all Activities inherit from RubotoActivity
class OtherActivity < MainActivity
  #this activity uses other_view which overrides main_view:
  view :other_view
  #but the about-menu-option is shown here, since OtherActvitity inherits from it

  #normal on_create
  def on_create
    #of course, menu options are also addable programmatically:
    add_menu("Execute", drawable_ic_menu_play) do
      #some business logic here
    end    
  end

end
