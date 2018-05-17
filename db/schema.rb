ActiveRecord::Schema.define(version: 20180503035447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.text "email"
    t.text "content"
  end

end
