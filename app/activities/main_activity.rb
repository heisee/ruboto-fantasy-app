#all Activities inherit from RubotoActivity
class MainActivity < RubotoActivity
  #this activity uses the following view:
  view :main_view
  #options are quite static in an activity, so they could be defined like this:
  #a menu option: a label and a method, that will be used to execute. This decouples the
  #view declaration part from logik from businesslogik (this could also be declared in a view?)
  menu_option "About", :about_menu_option_handler, :icon=>:drawable_ic_menu_play #somehow :drawable_ic_menu_play maps on Ruboto::R::drawable::ic_menu_play

  #the usual on_create classbacks
  def on_create
    #some vars are filled here, which are used in the view
    @some_text="Hello World"
    @product_list=Product.list(:limit=>20) #the usual ORM stuff with the product model
    @footer_button_text="press for menu"
  end

  #this method is added as listener to the view-list in main_view.rb
  def one_list_view_listener view
    on_item_click do
      @text_view.text=view.text
    end
  end

  #this method is also added, but it does something different
  def other_list_view_listener view
    toast "a toast is shown"
  end

  #these are methods, that one can implement
  def about_menu_option_handler
    #in the eye of the beholder: is this kind of building views good or bad?
    dialog=alert_dialog do |d|
      d.title="About Ruboto IRB v0.2"
      d.view=scroll_view do
        tv = text_view :padding => [5,5,5,5], :text => "Ruboto IRB is a UI for scripting Android using the Ruby language through JRuby... some more links here...."
        Linkify.addLinks(tv, Linkify::ALL)
      end
      d.positive_button("Ok")
    end
    dialog.show
  end

end
