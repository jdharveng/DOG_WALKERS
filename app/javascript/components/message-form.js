import { sendMessage } from "../client/chat";

const submitMessage = function(inputMessage, inputChatId) {
  // Invokes sendMessage, that, in turn, invokes Ruby send_message method
  // that will create a Message instance with ActiveRecord
  sendMessage(inputMessage.value, inputChatId.value);

  // eslint-disable-next-line
  inputMessage.value = "";
  inputMessage.focus();
}

// const form = document.getElementById('new_message');

const sendButton = function(form){
  if (form) {
    const inputMessage = form.querySelector('.message-form--input');
    const inputChatId = form.querySelector('#message_chat_id');
    const submit = form.querySelector('.message-form--submit');

    // You can send a message with cmd/ctrl+enter
    inputMessage.addEventListener('keydown', event => {
      if (event.keyCode === 13 && event.metaKey) {
        console.log('Eventlistener keydow ');
        event.preventDefault();
        submitMessage(inputMessage, inputChatId);
      }
    });

    // Or by cicking a button
    submit.addEventListener('click', event => {
       console.log('Eventlistener click ');
      event.preventDefault();
      submitMessage(inputMessage, inputChatId);
    });
  }
}

export default sendButton;
