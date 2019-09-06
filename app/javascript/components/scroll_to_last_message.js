function scrollLastMessageIntoView() {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];

  lastMessage.scrollIntoView();

  // console.log('hi');


}

const scrollOnClickTab = () => {
  const clickedTab = document.querySelector('#chatroom-tab');
  clickedTab.addEventListener('click', (event) => {
    setTimeout(scrollLastMessageIntoView, 200);
    // scrollLastMessageIntoView();
    // console.log("alert('Hello')");
  })
}

export { scrollLastMessageIntoView, scrollOnClickTab };
