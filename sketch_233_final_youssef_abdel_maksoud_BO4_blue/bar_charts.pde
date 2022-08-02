void createchart(float [] arr,int x,int y,String title)
{

BarChart barChart;
barChart = new BarChart(this);
barChart.setData(arr);
// Scaling
barChart.setMinValue(0);
barChart.setMaxValue(20);
// Axis appearance
textFont(createFont("Serif", 5), 7);
barChart.showValueAxis(true);
barChart.setValueFormat("#");
barChart.showCategoryAxis(true);
// Bar colours and appearance
barChart.setBarColour(color(50, 255, 20, 200));
barChart.setBarGap(2);
barChart.draw(x, y, 400, 100);
// title
textSize(20);
text(title, x+100, 650);
}
