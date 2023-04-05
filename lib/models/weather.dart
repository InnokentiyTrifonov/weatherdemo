class WeatherResponse {
  WeatherResponse({
    required this.currentCondition,
    required this.nearestArea,
  });
  late final List<CurrentCondition> currentCondition;
  late final List<NearestArea> nearestArea;

  
  WeatherResponse.fromJson(Map<String, dynamic> json){
    currentCondition = List.from(json['current_condition']).map((e)=>CurrentCondition.fromJson(e)).toList();
    nearestArea = List.from(json['nearest_area']).map((e)=>NearestArea.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['current_condition'] = currentCondition.map((e)=>e.toJson()).toList();
    data['nearest_area'] = nearestArea.map((e)=>e.toJson()).toList();
    return data;
  }
}

class CurrentCondition {
  CurrentCondition({
    required this.feelsLikeC,
    required this.feelsLikeF,
    required this.cloudcover,
    required this.humidity,
    required this.localObsDateTime,
    required this.observationTime,
    required this.precipInches,
    required this.precipMM,
    required this.pressure,
    required this.pressureInches,
    required this.tempC,
    required this.tempF,
    required this.uvIndex,
    required this.visibility,
    required this.visibilityMiles,
    required this.weatherCode,
    required this.weatherDesc,
    required this.weatherIconUrl,
    required this.winddir16Point,
    required this.winddirDegree,
    required this.windspeedKmph,
    required this.windspeedMiles,
  });
  late final String feelsLikeC;
  late final String feelsLikeF;
  late final String cloudcover;
  late final String humidity;
  late final String localObsDateTime;
  late final String observationTime;
  late final String precipInches;
  late final String precipMM;
  late final String pressure;
  late final String pressureInches;
  late final String tempC;
  late final String tempF;
  late final String uvIndex;
  late final String visibility;
  late final String visibilityMiles;
  late final String weatherCode;
  late final List<WeatherDesc> weatherDesc;
  late final List<WeatherIconUrl> weatherIconUrl;
  late final String winddir16Point;
  late final String winddirDegree;
  late final String windspeedKmph;
  late final String windspeedMiles;
  
  CurrentCondition.fromJson(Map<String, dynamic> json){
    feelsLikeC = json['FeelsLikeC'];
    feelsLikeF = json['FeelsLikeF'];
    cloudcover = json['cloudcover'];
    humidity = json['humidity'];
    localObsDateTime = json['localObsDateTime'];
    observationTime = json['observation_time'];
    precipInches = json['precipInches'];
    precipMM = json['precipMM'];
    pressure = json['pressure'];
    pressureInches = json['pressureInches'];
    tempC = json['temp_C'];
    tempF = json['temp_F'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    visibilityMiles = json['visibilityMiles'];
    weatherCode = json['weatherCode'];
    weatherDesc = List.from(json['weatherDesc']).map((e)=>WeatherDesc.fromJson(e)).toList();
    weatherIconUrl = List.from(json['weatherIconUrl']).map((e)=>WeatherIconUrl.fromJson(e)).toList();
    winddir16Point = json['winddir16Point'];
    winddirDegree = json['winddirDegree'];
    windspeedKmph = json['windspeedKmph'];
    windspeedMiles = json['windspeedMiles'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['FeelsLikeC'] = feelsLikeC;
    data['FeelsLikeF'] = feelsLikeF;
    data['cloudcover'] = cloudcover;
    data['humidity'] = humidity;
    data['localObsDateTime'] = localObsDateTime;
    data['observation_time'] = observationTime;
    data['precipInches'] = precipInches;
    data['precipMM'] = precipMM;
    data['pressure'] = pressure;
    data['pressureInches'] = pressureInches;
    data['temp_C'] = tempC;
    data['temp_F'] = tempF;
    data['uvIndex'] = uvIndex;
    data['visibility'] = visibility;
    data['visibilityMiles'] = visibilityMiles;
    data['weatherCode'] = weatherCode;
    data['weatherDesc'] = weatherDesc.map((e)=>e.toJson()).toList();
    data['weatherIconUrl'] = weatherIconUrl.map((e)=>e.toJson()).toList();
    data['winddir16Point'] = winddir16Point;
    data['winddirDegree'] = winddirDegree;
    data['windspeedKmph'] = windspeedKmph;
    data['windspeedMiles'] = windspeedMiles;
    return data;
  }
}

class WeatherDesc {
  WeatherDesc({
    required this.value,
  });
  late final String value;
  
  WeatherDesc.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class WeatherIconUrl {
  WeatherIconUrl({
    required this.value,
  });
  late final String value;
  
  WeatherIconUrl.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class NearestArea {
  NearestArea({
    required this.areaName,
    required this.country,
    required this.latitude,
    required this.longitude,
    required this.population,
    required this.region,
    required this.weatherUrl,
  });
  late final List<AreaName> areaName;
  late final List<Country> country;
  late final String latitude;
  late final String longitude;
  late final String population;
  late final List<Region> region;
  late final List<WeatherUrl> weatherUrl;
  
  NearestArea.fromJson(Map<String, dynamic> json){
    areaName = List.from(json['areaName']).map((e)=>AreaName.fromJson(e)).toList();
    country = List.from(json['country']).map((e)=>Country.fromJson(e)).toList();
    latitude = json['latitude'];
    longitude = json['longitude'];
    population = json['population'];
    region = List.from(json['region']).map((e)=>Region.fromJson(e)).toList();
    weatherUrl = List.from(json['weatherUrl']).map((e)=>WeatherUrl.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['areaName'] = areaName.map((e)=>e.toJson()).toList();
    data['country'] = country.map((e)=>e.toJson()).toList();
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['population'] = population;
    data['region'] = region.map((e)=>e.toJson()).toList();
    data['weatherUrl'] = weatherUrl.map((e)=>e.toJson()).toList();
    return data;
  }
}

class AreaName {
  AreaName({
    required this.value,
  });
  late final String value;
  
  AreaName.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class Country {
  Country({
    required this.value,
  });
  late final String value;
  
  Country.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class Region {
  Region({
    required this.value,
  });
  late final String value;
  
  Region.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class WeatherUrl {
  WeatherUrl({
    required this.value,
  });
  late final String value;
  
  WeatherUrl.fromJson(Map<String, dynamic> json){
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    return data;
  }
}

class Request {
  Request({
    required this.query,
    required this.type,
  });
  late final String query;
  late final String type;
  
  Request.fromJson(Map<String, dynamic> json){
    query = json['query'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['query'] = query;
    data['type'] = type;
    return data;
  }
}

class Weather {
  Weather({
    required this.astronomy,
    required this.avgtempC,
    required this.avgtempF,
    required this.date,
    required this.hourly,
    required this.maxtempC,
    required this.maxtempF,
    required this.mintempC,
    required this.mintempF,
    required this.sunHour,
    required this.totalSnowCm,
    required this.uvIndex,
  });
  late final List<Astronomy> astronomy;
  late final String avgtempC;
  late final String avgtempF;
  late final String date;
  late final List<Hourly> hourly;
  late final String maxtempC;
  late final String maxtempF;
  late final String mintempC;
  late final String mintempF;
  late final String sunHour;
  late final String totalSnowCm;
  late final String uvIndex;
  
  Weather.fromJson(Map<String, dynamic> json){
    astronomy = List.from(json['astronomy']).map((e)=>Astronomy.fromJson(e)).toList();
    avgtempC = json['avgtempC'];
    avgtempF = json['avgtempF'];
    date = json['date'];
    hourly = List.from(json['hourly']).map((e)=>Hourly.fromJson(e)).toList();
    maxtempC = json['maxtempC'];
    maxtempF = json['maxtempF'];
    mintempC = json['mintempC'];
    mintempF = json['mintempF'];
    sunHour = json['sunHour'];
    totalSnowCm = json['totalSnow_cm'];
    uvIndex = json['uvIndex'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['astronomy'] = astronomy.map((e)=>e.toJson()).toList();
    data['avgtempC'] = avgtempC;
    data['avgtempF'] = avgtempF;
    data['date'] = date;
    data['hourly'] = hourly.map((e)=>e.toJson()).toList();
    data['maxtempC'] = maxtempC;
    data['maxtempF'] = maxtempF;
    data['mintempC'] = mintempC;
    data['mintempF'] = mintempF;
    data['sunHour'] = sunHour;
    data['totalSnow_cm'] = totalSnowCm;
    data['uvIndex'] = uvIndex;
    return data;
  }
}

class Astronomy {
  Astronomy({
    required this.moonIllumination,
    required this.moonPhase,
    required this.moonrise,
    required this.moonset,
    required this.sunrise,
    required this.sunset,
  });
  late final String moonIllumination;
  late final String moonPhase;
  late final String moonrise;
  late final String moonset;
  late final String sunrise;
  late final String sunset;
  
  Astronomy.fromJson(Map<String, dynamic> json){
    moonIllumination = json['moon_illumination'];
    moonPhase = json['moon_phase'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['moon_illumination'] = moonIllumination;
    data['moon_phase'] = moonPhase;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}

class Hourly {
  Hourly({
    required this.dewPointC,
    required this.dewPointF,
    required this.feelsLikeC,
    required this.feelsLikeF,
    required this.heatIndexC,
    required this.heatIndexF,
    required this.windChillC,
    required this.windChillF,
    required this.windGustKmph,
    required this.windGustMiles,
    required this.chanceoffog,
    required this.chanceoffrost,
    required this.chanceofhightemp,
    required this.chanceofovercast,
    required this.chanceofrain,
    required this.chanceofremdry,
    required this.chanceofsnow,
    required this.chanceofsunshine,
    required this.chanceofthunder,
    required this.chanceofwindy,
    required this.cloudcover,
    required this.humidity,
    required this.precipInches,
    required this.precipMM,
    required this.pressure,
    required this.pressureInches,
    required this.tempC,
    required this.tempF,
    required this.time,
    required this.uvIndex,
    required this.visibility,
    required this.visibilityMiles,
    required this.weatherCode,
    required this.weatherDesc,
    required this.weatherIconUrl,
    required this.winddir16Point,
    required this.winddirDegree,
    required this.windspeedKmph,
    required this.windspeedMiles,
  });
  late final String dewPointC;
  late final String dewPointF;
  late final String feelsLikeC;
  late final String feelsLikeF;
  late final String heatIndexC;
  late final String heatIndexF;
  late final String windChillC;
  late final String windChillF;
  late final String windGustKmph;
  late final String windGustMiles;
  late final String chanceoffog;
  late final String chanceoffrost;
  late final String chanceofhightemp;
  late final String chanceofovercast;
  late final String chanceofrain;
  late final String chanceofremdry;
  late final String chanceofsnow;
  late final String chanceofsunshine;
  late final String chanceofthunder;
  late final String chanceofwindy;
  late final String cloudcover;
  late final String humidity;
  late final String precipInches;
  late final String precipMM;
  late final String pressure;
  late final String pressureInches;
  late final String tempC;
  late final String tempF;
  late final String time;
  late final String uvIndex;
  late final String visibility;
  late final String visibilityMiles;
  late final String weatherCode;
  late final List<WeatherDesc> weatherDesc;
  late final List<WeatherIconUrl> weatherIconUrl;
  late final String winddir16Point;
  late final String winddirDegree;
  late final String windspeedKmph;
  late final String windspeedMiles;
  
  Hourly.fromJson(Map<String, dynamic> json){
    dewPointC = json['DewPointC'];
    dewPointF = json['DewPointF'];
    feelsLikeC = json['FeelsLikeC'];
    feelsLikeF = json['FeelsLikeF'];
    heatIndexC = json['HeatIndexC'];
    heatIndexF = json['HeatIndexF'];
    windChillC = json['WindChillC'];
    windChillF = json['WindChillF'];
    windGustKmph = json['WindGustKmph'];
    windGustMiles = json['WindGustMiles'];
    chanceoffog = json['chanceoffog'];
    chanceoffrost = json['chanceoffrost'];
    chanceofhightemp = json['chanceofhightemp'];
    chanceofovercast = json['chanceofovercast'];
    chanceofrain = json['chanceofrain'];
    chanceofremdry = json['chanceofremdry'];
    chanceofsnow = json['chanceofsnow'];
    chanceofsunshine = json['chanceofsunshine'];
    chanceofthunder = json['chanceofthunder'];
    chanceofwindy = json['chanceofwindy'];
    cloudcover = json['cloudcover'];
    humidity = json['humidity'];
    precipInches = json['precipInches'];
    precipMM = json['precipMM'];
    pressure = json['pressure'];
    pressureInches = json['pressureInches'];
    tempC = json['tempC'];
    tempF = json['tempF'];
    time = json['time'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    visibilityMiles = json['visibilityMiles'];
    weatherCode = json['weatherCode'];
    weatherDesc = List.from(json['weatherDesc']).map((e)=>WeatherDesc.fromJson(e)).toList();
    weatherIconUrl = List.from(json['weatherIconUrl']).map((e)=>WeatherIconUrl.fromJson(e)).toList();
    winddir16Point = json['winddir16Point'];
    winddirDegree = json['winddirDegree'];
    windspeedKmph = json['windspeedKmph'];
    windspeedMiles = json['windspeedMiles'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['DewPointC'] = dewPointC;
    data['DewPointF'] = dewPointF;
    data['FeelsLikeC'] = feelsLikeC;
    data['FeelsLikeF'] = feelsLikeF;
    data['HeatIndexC'] = heatIndexC;
    data['HeatIndexF'] = heatIndexF;
    data['WindChillC'] = windChillC;
    data['WindChillF'] = windChillF;
    data['WindGustKmph'] = windGustKmph;
    data['WindGustMiles'] = windGustMiles;
    data['chanceoffog'] = chanceoffog;
    data['chanceoffrost'] = chanceoffrost;
    data['chanceofhightemp'] = chanceofhightemp;
    data['chanceofovercast'] = chanceofovercast;
    data['chanceofrain'] = chanceofrain;
    data['chanceofremdry'] = chanceofremdry;
    data['chanceofsnow'] = chanceofsnow;
    data['chanceofsunshine'] = chanceofsunshine;
    data['chanceofthunder'] = chanceofthunder;
    data['chanceofwindy'] = chanceofwindy;
    data['cloudcover'] = cloudcover;
    data['humidity'] = humidity;
    data['precipInches'] = precipInches;
    data['precipMM'] = precipMM;
    data['pressure'] = pressure;
    data['pressureInches'] = pressureInches;
    data['tempC'] = tempC;
    data['tempF'] = tempF;
    data['time'] = time;
    data['uvIndex'] = uvIndex;
    data['visibility'] = visibility;
    data['visibilityMiles'] = visibilityMiles;
    data['weatherCode'] = weatherCode;
    data['weatherDesc'] = weatherDesc.map((e)=>e.toJson()).toList();
    data['weatherIconUrl'] = weatherIconUrl.map((e)=>e.toJson()).toList();
    data['winddir16Point'] = winddir16Point;
    data['winddirDegree'] = winddirDegree;
    data['windspeedKmph'] = windspeedKmph;
    data['windspeedMiles'] = windspeedMiles;
    return data;
  }
}