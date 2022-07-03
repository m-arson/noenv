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
