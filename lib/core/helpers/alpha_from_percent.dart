int alphaFromPercentage(int percentage) {
  return (255 * (percentage / 100)).clamp(0, 255).toInt();
}