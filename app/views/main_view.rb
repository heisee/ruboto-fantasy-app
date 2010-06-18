class MainView < RubotoActivity

  def on_create
    setTitle "A Title"
    linear_layout :orientation => :vertical do #somehow horizontal maps on LinearLayout::HORIZONTAL
      @text_view=text_view(:text => @some_text)
      #Listeners are directly attachable in a view element
      list_view :list => @product_list, :listener=>[:one_list_view_listener, :other_list_view_listener]
      footer #"helper" method
    end
  end

end
