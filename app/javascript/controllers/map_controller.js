import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  static values = {
    apiKey: String,
    marker: Object,
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v12",
    })
    this.#addMarkerToMap()
    this.#fitMapToMarkers()
  }

  #addMarkerToMap() {
    new mapboxgl.Marker({
      color: "rgb(37, 75, 69)",
      draggable: false,
    })
      .setLngLat([this.markerValue.lng, this.markerValue.lat])
      .addTo(this.map)
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    bounds.extend([this.markerValue.lng, this.markerValue.lat])
    this.map.fitBounds(bounds, { duration: 0, maxZoom: 15, padding: 70 })
  }
}
