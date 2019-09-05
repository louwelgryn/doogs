import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

const initSelect2 = () => {


  $('.select2').select2().on('select2:select', function (e) { $('.filter-search').submit() }); // (~ document.querySelectorAll)
};

export { initSelect2 };
