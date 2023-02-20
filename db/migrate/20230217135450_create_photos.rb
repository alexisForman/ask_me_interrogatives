class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :image_path_good, default: "https://pixabay.com/images/id-163510/"
      t.string :image_path_ordinary, default: "https://pixabay.com/images/id-304649/"
      t.string :image_path_bad, default: "https://pixabay.com/images/id-1977519/"

      t.timestamps
    end
  end
end
