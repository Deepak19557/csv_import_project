
//inject_into_file "app/javascript/sweetalert/index.js", <<-'JAVASCRIPT'
import swal from "sweetalert2";
import Rails from "@rails/ujs";

Rails.confirm = function (message, element) {
  const swalWithBootstrap = swal.mixin({
    buttonsStyling: true,
  });

  swalWithBootstrap
    .fire({
      html: message,
      title: "Polyps.KR",
      showCancelButton: true,
      confirmButtonText: "예",
      cancelButtonText: "아니요",
    })
    .then((result) => {
      if (result.value) {
        console.log("sweetalert finished");
        element.removeAttribute("data-confirm");
        element.click();
      }
    });
};
JAVASCRIPT

//inject_into_file "app/javascript/packs/application.js", after: 'require("channels")' do <<-'JAVASCRIPT'

import "sweetalert"
JAVASCRIPT
end