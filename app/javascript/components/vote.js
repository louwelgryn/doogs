


const voteFunction = () => {

  const votesContainer = document.querySelectorAll(".votes-container");
  votesContainer.forEach((vote) => {
    vote.addEventListener('click',(event) => {
      let t = event.currentTarget;
      let iconsFilled = t.querySelector(".icons-filled");
      iconsFilled.classList.add('up-votes');
      let iconsVote = t.querySelector(".icons-vote");
      iconsVote.classList.add('zero-votes');
    })
  });
};

const upVoteFunction = () => {

  const positive = document.querySelectorAll(".positive");
  positive.forEach((vote) => {
    vote.addEventListener('click',(event) => {
      let t = event.currentTarget;
      let upvote = t.querySelector(".upvote");
      upvote.innerHTML = Number.parseInt(upvote.innerHTML,10) + 1
    })
  });
};

const downVoteFunction = () => {

  const negative = document.querySelectorAll(".negative");
  negative.forEach((vote) => {
    vote.addEventListener('click',(event) => {
      let t = event.currentTarget;
      let downvote = t.querySelector(".downvote");
      downvote.innerHTML = Number.parseInt(downvote.innerHTML,10) + 1
    })
  });
};

export { voteFunction, upVoteFunction, downVoteFunction }
// export {voteFunction}


