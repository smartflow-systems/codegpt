(() => {
  const canvas = document.getElementById("circuit-canvas");
  if (!canvas) return;
  const ctx = canvas.getContext("2d");
  const resize = () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
  };
  window.addEventListener("resize", resize);
  resize();
  let t = 0;
  const draw = () => {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    for (let i = 0; i < 12; i++) {
      ctx.beginPath();
      ctx.moveTo(0, (i + 1) * canvas.height / 12);
      ctx.bezierCurveTo(
        canvas.width / 4, (i * 30) + Math.sin(t + i) * 40,
        canvas.width * 3 / 4, (i * 40) + Math.cos(t - i) * 40,
        canvas.width, (i + 1) * canvas.height / 12
      );
      ctx.strokeStyle = "rgba(255, 215, 0, 0.3)";
      ctx.lineWidth = 1.5;
      ctx.stroke();
    }
    t += 0.015;
    requestAnimationFrame(draw);
  };
  draw();
})();
