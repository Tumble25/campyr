import "bootstrap";

document.querySelector("#totalprice").addEventListener("change", (e) => {
  let list = document.querySelectorAll("select")
let year = parseInt(list[0].value, 10);
let month = parseInt(list[1].value, 10);
let day = parseInt(list[2].value, 10);

let start_date = new Date(year, month, day)

year = parseInt(list[3].value, 10);
month = parseInt(list[4].value, 10);
day = parseInt(list[5].value, 10);
let end_date = new Date(year, month, day)
var diff =  Math.floor(( end_date - start_date ) / 86400000);
let price  = parseInt(document.querySelector("#dayprice").innerText, 10)
document.querySelector("#price").innerHTML = `<strong>Total: €${diff* price}</strong>`
})

