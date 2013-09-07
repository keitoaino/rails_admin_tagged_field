rateField = document.getElementById window.rate
ratePreview = document.getElementById 'rate-preview'
rate = document.getElementById 'rate'

symbol = '$'

for i in [1..5]
  checkbox = document.createElement 'input'
  checkbox.setAttribute 'type', 'radio'
  checkbox.setAttribute 'name', 'rate'
  checkbox.setAttribute 'value', i

  rate.appendChild checkbox

  checkbox.addEventListener 'change', ->
    rateField.value = this.value
    ratePreview.innerHTML = Array(parseInt(this.value) + 1).join symbol

  if parseInt(rateField.value) == i
    checkbox.setAttribute 'checked', 'checked'
    ratePreview.innerHTML = Array(i + 1).join symbol
