const initUpdateNavbarOnScrollHome = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 350) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

const initUpdateNavbarOnScrollIndex = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 200) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
}

export { initUpdateNavbarOnScrollHome };

export { initUpdateNavbarOnScrollIndex };
