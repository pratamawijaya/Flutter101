class Rocket {
 int id;
 String country;
 String company;
 String rocket_name;

 Rocket(int id, String country, String company, String rocket_name){
   this.id = id;
   this.country = country;
   this.company = company;
   this.rocket_name = rocket_name;
 }

 Rocket.fromJson(Map json)
  : id = json['id'],
    country = json['country'],
    company = json['company'],
    rocket_name = json['rocket_name'];


  Map toJson(){
    return {
      'id': id,
      'country': country,
      'company': company,
      'rocket_name': rocket_name
    };
  }
}