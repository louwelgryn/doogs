import CountUp from 'countup.js';

const initCounter = () => {
  var countUp = new CountUp('counter-target', 2000);
  countUp.start();
};

export { initCounter };
