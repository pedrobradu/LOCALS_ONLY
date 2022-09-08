import { Controller } from "@hotwired/stimulus"
import Swal from 'sweetalert2'

// Connects to data-controller="sweetalert2"
export default class extends Controller {
  static values = {
    // alert: String
  }

  static targets = [
    "btnWishlist"
    // alert: String
  ]
  
  connect() {
    console.log("passei aqui");
    this.redirect = false;
  }

  confirm(e) {
    const target = e.currentTarget
    if (this.redirect) return;
    e.stopImmediatePropagation();
    e.preventDefault();
    Swal.fire({
      title: 'Confirme',
      text: target.dataset.text,
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Sim, pode deletar!!'
    }).then((result) => {
      if (result.isConfirmed) {
        this.redirect = true;
        target.click()
        // Swal.fire(
        //   'Deleted!',
        //   'Your file has been deleted.',
        //   'success'
        // )
      }
    })
  }

  checkin(e) {
    const target = e.currentTarget
    if (this.redirect) return;
    e.stopImmediatePropagation();
    e.preventDefault();
    Swal.fire({
      title: 'Checkin Realizado',
      icon: 'success',
      text: 'Projeto apresentado com sucesso! Obrigado Le Wagon, professores, meu time e colegas por tudo!!',
      confirmButtonText: 'E É ISSO'
    }).then((result) => {
      if (result.isConfirmed) {
        this.redirect = true;
        target.click()
      }
    })
  }
}