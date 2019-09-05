const submitForm = () => {
  const form = document.querySelector('.filter-search');
  const formInputs = document.querySelectorAll('.filters');

  console.log(formInputs);

  formInputs.forEach((input) => {
    input.addEventListener('change', (event) => {
      form.submit();
    })
  })

  // selectInput = document.querySelector('.select2-selection');
  // selectInput.addEventListener('change', (event) => {
  //   form.submit();
  // })
}


export { submitForm };
