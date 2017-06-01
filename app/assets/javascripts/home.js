$(() => {
    console.log('document loaded')

    $('#btnSend').click(() => {
        let txtMessenger = $('#txtMessenger')
        let message = txtMessenger.val()

        App.chat.perform('message', {content: message})

        txtMessenger.val('')
    })
})