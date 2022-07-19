# == Schema Information
#
# Table name: organisations
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  address    :text
#  phone      :string
#  website    :string
#  logo_url   :string
#  type       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vendor < Organisation
end
