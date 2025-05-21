<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <title>Calculadora Avançada</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    * {
      box-sizing: border-box;
    }
    body {
      font-family: Arial, sans-serif;
      background: #f0f0f0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .calculadora {
      background: #ffffff;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      width: 100%;
      max-width: 320px;
    }
    #display {
      width: 100%;
      height: 50px;
      font-size: 24px;
      text-align: right;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 10px;
    }
    .botoes {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 10px;
    }
    button {
      padding: 20px;
      font-size: 20px;
      border: none;
      border-radius: 10px;
      background: #e0e0e0;
      cursor: pointer;
      transition: background 0.2s;
    }
    button:hover {
      background: #d0d0d0;
    }
    .igual {
      background: #4CAF50;
      color: white;
    }
    .igual:hover {
      background: #45a049;
    }
    .limpar {
      background: #f44336;
      color: white;
    }
    .limpar:hover {
      background: #e53935;
    }
  </style>
</head>
<body>

<div class="calculadora">
  <input type="text" id="display" disabled>
  <div class="botoes">
    <button onclick="adicionar('7')">7</button>
    <button onclick="adicionar('8')">8</button>
    <button onclick="adicionar('9')">9</button>
    <button onclick="adicionar('/')">÷</button>

    <button onclick="adicionar('4')">4</button>
    <button onclick="adicionar('5')">5</button>
    <button onclick="adicionar('6')">6</button>
    <button onclick="adicionar('*')">×</button>

    <button onclick="adicionar('1')">1</button>
    <button onclick="adicionar('2')">2</button>
    <button onclick="adicionar('3')">3</button>
    <button onclick="adicionar('-')">−</button>

    <button onclick="adicionar('0')">0</button>
    <button onclick="adicionar('.')">.</button>
    <button onclick="calcular()" class="igual">=</button>
    <button onclick="adicionar('+')">+</button>

    <button onclick="limpar()" class="limpar" style="grid-column: span 4;">C</button>
  </div>
</div>

<script>
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
  document.addEventListener('keydown', function(e) {
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
</script>

</body>
</html>
Recursos adicionais:
Pressione Enter para calcular.

Pressione Esc para limpar.

Pressione Backspace para apagar o último caractere.

Se quiser um som ao clicar, salvar histórico, mudar tema ou outro recurso, posso adicionar para você!









Ferramentas


