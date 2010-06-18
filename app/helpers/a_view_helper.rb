class AViewHelper < ViewHelper

  #methods can be called from views
  def footer
    linear_layout :orientation => :horizontal do #somehow horizontal maps on LinearLayout::HORIZONTAL
      @text_view=text_view(:text => @activity_defined_footer_text||"footertext")
      #Listeners are directly attachable in a view element
      button :text => @footer_button_text, :listener=>[:footer_button_view_listener] #since this is a general footer, the handler is also in this helper
      footer
    end
  end

  #the footer button was pressed
  def footer_button_view_listener view_element
    #some business_code here
  end

end
