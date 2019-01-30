$(document).ready(function() {
  var messages = $('#chat');

  function init() {
    messages.scrollTop(message[0].scrollHeight);
  }

  window.setTimeout(init, 50)
});
