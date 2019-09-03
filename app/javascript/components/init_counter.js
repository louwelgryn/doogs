import { CountUp } from 'countup.js';

const initCounter = () => {
  const startCounter = Number.parseInt(document.getElementById("counter-target").dataset.counterstart, 10)
  const endCounter = Number.parseInt(document.getElementById("counter-target").dataset.counterend, 10)
  const options = {
    startVal: startCounter,
    duration: 4,
  };
  const daysCounter = new CountUp('counter-target', endCounter, options);
  daysCounter.start();
}

export { initCounter };
