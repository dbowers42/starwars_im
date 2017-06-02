$(() => {
    console.log('document loaded')

    function sendMessage(){
        let txtMessenger = $('#txtMessenger')
        let message = txtMessenger.val()

        App.chat.perform('message', {content: message})

        txtMessenger.val('')
        txtMessenger.focus()
    }

    $('#btnSend').click(() => {
       sendMessage()
    })

    $(document).keypress((e) => {
        if(e.which == 13) {
            sendMessage()
        }
    });
})