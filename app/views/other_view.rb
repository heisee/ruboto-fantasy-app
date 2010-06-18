class OtherView < RubotoActivity

  def on_create
    setTitle "Another Title"
    linear_layout :orientation => :vertical do 
      @text_view=text_view(:text => "other Activity")
      footer
    end
  end

end
