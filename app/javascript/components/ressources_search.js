const submitRessourcesSearch = () => {

  const checkboxes = document.querySelectorAll("input[type=checkbox]");

  const submitButton = document.querySelector("#ressources-form input[type=submit]")

  checkboxes.forEach((checkbox) => {
    checkbox.addEventListener("change", (event) => {
      submitButton.click();
    });
  });
}

export { submitRessourcesSearch };
