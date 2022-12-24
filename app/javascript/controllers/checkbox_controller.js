import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log('Hello there');
  }

  update(event){
    console.log(`Value changed!`, event.target.checked);
    // fetch(`/gifts/${1}`, {
    //   method: "PUT",
    //   body: {
    //     gift: {
    //       purchased: event.target.checked,
    //     }
    //   }
    // });
  }
}
