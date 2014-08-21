class County < ActiveRecord::Base
  has_many :properties

  ACCESSOR_SITE = {
  "Beaver County" => "Not available online",
  "Box Elder County" => "http://erecord.boxeldercounty.org/eaglesoftware/taxweb/search.jsp",
  "Cache County" => "",
  "Carbon County" => "",
  "Daggett County" => "",
  "Davis County" => "",
  "Duchesne County" => "",
  "Emery County" => "",
  "Garfield County" => "",
  "Grand County" => "",
  "Iron County" => "",
  "Juab County" => "",
  "Kane County" => "",
  "Millard County" => "",
  "Morgan County" => "",
  "Piute County" => "",
  "Rich County" => "",
  "Salt Lake County" => "http://assessor.slco.org/",
  "San Juan County" => "",
  "Sanpete County" => "",
  "Sevier County" => "",
  "Summit County" => "",
  "Tooele County" => "",
  "Uintah County" => "",
  "Utah County" => "",
  "Wasatch County" => "",
  "Washington County" => "",
  "Wayne County" => "",
  "Weber County" => ""
  }
end
