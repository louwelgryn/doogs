import Sortable from 'sortablejs';

const taskFunction = () => {

const options = {
  group: "drag",
  draggable: ".project-cards",
  animation: 150,
  onAdd: function (event) {
    const element = event.item;
    console.log(event.from.id)
    const link = element.querySelector("a");
   const newLink = link.href + "?priority_level=" + event.to.id;
    link.setAttribute('href', newLink);
    link.click()
   const task_status = element.querySelector(".task-status")
    task_status.innerHTML = event.to.id
console.log(task_status.classList)


    if (event.to.id === "Normale") {

      task_status.classList.remove('btn-yellow')
      task_status.classList.remove('btn-red')
      task_status.classList.remove('btn-orange')
    task_status.classList.add('btn-yellow')
     } else if (event.to.id === "Urgente") {

      task_status.classList.remove('btn-yellow')
      task_status.classList.remove('btn-red')
      task_status.classList.remove('btn-orange')

      task_status.classList.add('btn-orange')
    } else {

      task_status.classList.remove('btn-yellow')
      task_status.classList.remove('btn-red')
      task_status.classList.remove('btn-orange')
      task_status.classList.add('btn-red')
    }

  }
};

function deleteColor(element) {
  console.log(element)
  console.log(element.innerHTML)
  console.log(element.classList)

  if (element.innerHTML === "Normale") {
    element.classList.remove("btn-yellow")
  } else if (element.innerHTML === "Urgente") {
      element.classList.remove("btn-orange")
    } else if (element.innerHTML === "Prioritaire") {
      element.classList.remove("btn-red")
    } else {

    }
}

const listWithHandleone = document.querySelector("#Normale")
const initSortableOne = () => {
  // Sortable.create(listWithHandleone);
  const sortable = new Sortable(listWithHandleone, options)
};

initSortableOne()

const listWithHandletwo = document.querySelector("#Prioritaire")
const initSortableTwo = () => {
  // Sortable.create(listWithHandletwo);
  const sortable = new Sortable(listWithHandletwo, options)
};

initSortableTwo()

const listWithHandlethree = document.querySelector("#Urgente")
const initSortableThree = () => {
  // Sortable.create(listWithHandletwo);
  const sortable = new Sortable(listWithHandlethree, options)
};

initSortableThree()
}

export {taskFunction}
