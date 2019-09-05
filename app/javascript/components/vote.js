


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



export {voteFunction}


