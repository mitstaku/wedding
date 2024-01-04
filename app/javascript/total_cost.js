document.addEventListener('turbolinks:load', function() {
  // 合計金額を計算して更新する関数
  function updateTotalCost() {
    let totalCost = 0;

    // 各費用入力フィールドの値を合計する
    document.querySelectorAll('.event-cost-input').forEach(function(input) {
      const value = parseInt(input.value, 10) || 0;
      totalCost += value;
    });

    // 合計金額を表示領域にセットする
    document.getElementById('total-cost').textContent = totalCost;
  }

  // 各費用入力フィールドにイベントリスナーを設定
  document.querySelectorAll('.event-cost-input').forEach(function(input) {
    input.addEventListener('input', updateTotalCost);
  });

  // 初期ロード時にも合計を更新
  updateTotalCost();
});