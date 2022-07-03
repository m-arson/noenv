const i=document.querySelectorAll("h5");

function update(node) {
  const tmp = node.innerText;
  node.innerText = Number(tmp) + 1;
  node.style.backgroundColor = colored();
}
function count(interval, funct, node) {
  setInterval(function() {
    funct(node);
  }, interval);
}
for (const item of i)
  count(1000, update, item);

const colored = () => {
  const r = Math.round(Math.random() * 255);
  const g = Math.round(Math.random() * 255);
  const b = Math.round(Math.random() * 255);
  return `rgb(${r},${g},${b})`;
}

/* HTML

<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
<h5>0</h5>
*/

/* CSS

h5 {
  border: 1px solid #000;
  width: max-content;
  min-width: 25px;
  text-align: center;
  padding: 5px;
  margin: 5px;
  display: inline-block;
  font-weight: normal;
  font-family: "Roboto";
}

*/
