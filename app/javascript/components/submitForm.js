const submitForm = () => {
  const form = document.querySelector('.filter-search');
  const formInputs = document.querySelectorAll('.filter-search select');

  formInputs.forEach((input) => {
    input.addEventListener('change', (event) => {
      form.submit();
    })
  })
}


export { submitForm };
