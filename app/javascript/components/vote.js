


const voteFunction = () => {

  const votesContainer = document.querySelectorAll(".votes-container");
  console.log(votesContainer)
  votesContainer.forEach((vote) => {
    vote.addEventListener('click',(event) => {
      let t = event.currentTarget;
      console.log(t);
      console.log(vote);
      let iconsFilled = t.querySelector(".icons-filled");
      console.log(iconsFilled)
      iconsFilled.classList.add('up-votes');
      let iconsVote = t.querySelector(".icons-vote");
      console.log(iconsVote);
      iconsVote.classList.add('zero-votes');
    })
  });
};

// const DomReload = () => {
// const formReaload = document.querySelector("#new_message");
// formReaload.addEventListener('submit', (event) => {
//   const iconsVote = document.querySelectorAll(".icons-vote");
//   console.log(iconsVote.length)
// // console.log(upvote)
// iconsVote.forEach((vote) => {
//  vote.addEventListener('click',(event) => {
//   const hidden = document.querySelector(".hidden");

//   console.log(hidden)
//   hidden.classList.remove('hidden');
//   hidden.classList.add('flex');
//   vote.classList.add('hidden')
// vote.classList.remove('flex')})
// });
// })
// }

export {voteFunction}


