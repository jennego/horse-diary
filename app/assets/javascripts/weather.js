const weather = fetch('https://api.openweathermap.org/data/2.5/weather?q=Vancouver&APPID=e51c2d723fe52f93b120636ef2ec3782&units=metric').then(res => res.json())
