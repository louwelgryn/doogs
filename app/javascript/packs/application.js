import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

