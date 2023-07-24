class Weather {
  final String temperature;
  final String image;
  final String time;
  Weather({
    required this.temperature,
    required this.image,
    required this.time,
  });
}

class WeekWeather {
  final String name;
  final String day;
  final String tem1;
  final String tem2;
  final String image;

  WeekWeather({required this.name, required this.day, required this.tem1, required this.tem2, required this.image});
}

List<Weather> todayWeather = [
  Weather(temperature: "23*", image: "assets/rain.png", time: "10:00"),
  Weather(temperature: "21*", image: "assets/thunderbold.webp", time: "11:00"),
  Weather(temperature: "22*", image: "assets/rain2.png", time: "12:00"),
  Weather(temperature: "19*", image: "assets/wind.png", time: "01:00"),
  Weather(temperature: "25*", image: "assets/rain.png", time: "02:00"),
  Weather(temperature: "23*", image: "assets/thunderbold.webp", time: "03:00"),
  Weather(temperature: "20*", image: "assets/rain2.png", time: "04:00"),
  Weather(temperature: "19*", image: "assets/wind.png", time: "05:00"),
];

List<WeekWeather> weekWeatherList = [
  WeekWeather(name: "Rainy", day: "Mon", tem1: "+20*", tem2: "+14*", image: "assets/rain.png"),
  WeekWeather(name: "Rainy", day: "Tue", tem1: "+22*", tem2: "+15*", image: "assets/rain2.png"),
  WeekWeather(name: "Storm", day: "Wed", tem1: "+21*", tem2: "+14*", image: "assets/thunderbold.webp"),
  WeekWeather(name: "Windy", day: "Thu", tem1: "+18*", tem2: "+16*", image: "assets/wind.png"),
  WeekWeather(name: "Rainy", day: "Fri", tem1: "+19*", tem2: "+14*", image: "assets/rain.png"),
  WeekWeather(name: "Rainy", day: "Sat", tem1: "+20*", tem2: "+17*", image: "assets/rain2.png"),
  WeekWeather(name: "Storm", day: "Sun", tem1: "+24*", tem2: "+20*", image: "assets/thunderbold.webp"),
];
