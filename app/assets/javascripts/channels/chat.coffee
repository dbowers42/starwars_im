App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    console.log('user has connected')

  disconnected: ->
    console.log('user has disconnected')

  received: (data) ->
    message = $('<div class="message" />')

    messageBox = $('<div />')
    sidebar = $('<div class="sidebar" />')

    avatar = $('<img class="avatar" />')
    avatar.attr({src: '/' + data.user.avatar})
    sidebar.append(avatar)
    message.append(sidebar)

    screenName = $('<div class="screen-name" />')
    screenName.text(data.user.screen_name)
    messageBox.append(screenName)

    content = $('<div class="content" />')
    content.text(data.message)
    messageBox.append(content)

    message.append(messageBox)

    $('.messages').append(message)

    message.get(0).scrollIntoView()

    $('#card-' + data.user.id).text(data.message)

    console.log('message has been received', data)

  message: ->
    console.log('sending message')
    @perform 'message'
