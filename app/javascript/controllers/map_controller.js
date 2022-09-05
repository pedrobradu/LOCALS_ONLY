import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array,
    user: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log(this.userValue)
    console.log("teste")

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })

    this.userValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      new mapboxgl.Marker({
        "color": "#eb4034"
      })

        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.userValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 14, duration: 0 })
  }
}
