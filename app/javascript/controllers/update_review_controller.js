import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["comment", "form", "commentInfo"]

  revealForm(event) {
    event.preventDefault()
    this.formTarget.classList.remove("d-none")
    this.commentTarget.classList.add("d-none")
  }

  update(event) {
    event.preventDefault()
    const url = this.formTarget.action
    fetch(url, {
      method: "PATCH",
      headers: { "Accept": "text/plain" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.text())
      .then((data) => {
        this.commentInfoTarget.outerHTML = data
      })
  }
}
