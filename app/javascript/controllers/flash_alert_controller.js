import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

// Connects to data-controller="sweetalert2"
export default class extends Controller {
  static values = {
    alert: String
  }

  connect() {
    Swal.fire({
      title: this.alertValue,
      icon: 'success',
      text: 'Projeto apresentado com sucesso! Obrigado Le Wagon, professores, meu time e meus colegas por tudo!!',
      confirmButtonText: 'E É ISSO'
    })
  }
}
