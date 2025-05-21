const display = document.getElementById('display');

function adicionar(valor) {
    display.value += valor;
}

function calcular() {
    try {
        display.value = eval(display.value);
    } catch {
        display.value = 'Erro';
    }
}

function limpar() {
    display.value = '';
}

// Suporte ao teclado
document.addEventListener('keydown', function (e) {
    if ((e.key >= '0' && e.key <= '9') || ['+', '-', '*', '/', '.'].includes(e.key)) {
        adicionar(e.key);
    } else if (e.key === 'Enter') {
        calcular();
    } else if (e.key === 'Backspace') {
        display.value = display.value.slice(0, -1);
    } else if (e.key === 'Escape') {
        limpar();
    }
});