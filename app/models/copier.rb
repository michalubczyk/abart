class Copier < ActiveRecord::Base
  attr_accessible :nazwa, :stan, :cena, :promocja, :funkcjonalnosc_st, :funkcjonalnosc_op, :predkosc_drukowania, :duplex,
                  :formaty_oryginalow, :podajnik_papieru_st, :gramatura_papieru, :rozdzielczosc_drukowania, :rozdzielczosc_kopiowania,
                  :tryb_skanowania, :drukowanie_sieciowe, :podajnik_oryginalow_st, :dysk_hdd, :druk_nosniki_danych, :czas_nagrzewania

  validates :nazwa, presence: { message: "Wprowadź nazwę kserokopiarki." }
  validates :cena, presence: { message: "Wprowadź cenę kserokopiarki." }
end
