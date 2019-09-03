import mapboxgl from 'mapbox-gl';

// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/mapbox/streets-v10'
//     });
//   }
// };

// export { initMapbox };


const openMap = () => {
  const toggle = document.querySelector('#toggle');

  toggle.addEventListener("click", (event) => {
    const map = document.querySelector('.map-wrapper');
    const cardsWrapper = document.querySelector('.cards-wrapper');
    map.classList.toggle("map-display");
    cardsWrapper.classList.toggle("map-display");

    const mapElement = document.getElementById('map');

    if (mapElement) { // only build a map if there's a div#map to inject into
      mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });
    }
  });
};


export { openMap };
