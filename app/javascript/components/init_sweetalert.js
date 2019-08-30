import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  const hiddenLink = document.querySelector('.hidden-link');

  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options).then(result => {
        if (result) {
          hiddenLink.click();
        }
      });
    });
  }
};

export { initSweetalert };
