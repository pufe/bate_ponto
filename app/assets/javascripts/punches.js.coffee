# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(->
  
    #Login show/hide
    
    login_fields = $('#user_login.logged_in')
    login_fields.remove()
    login_hidden = true
    $('#show_hide_login').click -> 
      if login_hidden
        login_fields.insertAfter $('#login_message')
        $('#show_hide_login').html 'Manter login -'
        login_hidden = false
      else
        login_fields.remove()
        $('#show_hide_login').html 'Logar com outro +'
        login_hidden = true
        
        
    # Edit punch datetimes
    
    $('.punch_time_display .punch_show_form_link').click ->  
      parent = $(this).parent('.punch_time_display').hide()
      parent_dom_id = parent.attr('meta-dom-id')
      punch_time_forms.filter('[meta-dom-id="' + parent_dom_id + '"]').insertAfter(parent)
    $('.punch_time_form .punch_show_display_link').click ->  
      parent = $(this).parent('.punch_time_form')
      parent.siblings('.punch_time_display').show()
      parent.detach()
    
    punch_time_forms = $('.punch_time_form').detach()

    
)  
  