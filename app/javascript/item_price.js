window.addEventListener('input', () => {
  const priceInput = document.getElementById("item-price");
  const inputValue = priceInput.value;
  // 価格の情報を取得

  const addTaxDom = document.getElementById("add-tax-price");
  addTaxDom.innerHTML = Math.floor(inputValue * 0.1)
  // 価格の情報に0.1をかけて手数料を表示(ここまではok)

  const profit = document.getElementById("profit");
  profit.innerHTML = Math.floor(inputValue * 0.9)
  // 価格から0.9をかけて利益を表示

});