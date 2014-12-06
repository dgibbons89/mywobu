jQuery ->
  $('body').prepend('<div id="fb-root"></div>')

  $.ajax
    url: "#{window.location.protocol}//connect.facebook.net/en_US/all.js"
    dataType: 'script'
    cache: true


window.fbAsyncInit = ->
  FB.init(appId: '<%= ENV["506537142787997"] %>', cookie: true)
  FB.getAuthResponse()['accessToken']

  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      window.location = 'users#finish_signup' if response.authResponse
      scope: "email, offline_access, user_birthday, user_friends, read_friendlists, friends_birthday"

  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      FB.logout() if response.authResponse
    true