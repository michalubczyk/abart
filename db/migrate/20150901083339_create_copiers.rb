class CreateCopiers < ActiveRecord::Migration
  def change
    create_table :copiers do |t|
      t.string :nazwa
      t.string :stan
      t.decimal :cena
      t.boolean :promocja
      t.string :funkcjonalnosc_st
      t.string :funkcjonalnosc_op
      t.integer :predkosc_drukowania
      t.boolean :duplex
      t.string :formaty_oryginalow
      t.string :podajnik_papieru_st
      t.string :gramatura_papieru
      t.string :rozdzielczosc_drukowania
      t.string :rozdzielczosc_kopiowania
      t.string :tryb_skanowania
      t.boolean :drukowanie_sieciowe
      t.boolean :podajnik_oryginalow_st
      t.string :dysk_hdd
      t.boolean :druk_nosniki_danych
      t.integer :czas_nagrzewania
      t.string :image

      t.timestamps null: false
    end
  end
end
