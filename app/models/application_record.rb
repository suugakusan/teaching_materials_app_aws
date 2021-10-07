class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  
  enum subject_id: {
    国語: 1,
    社会: 2,
    数学: 3,
    理科: 4,
    英語: 5,
    音楽: 6,
    保体: 7,
    技家: 8,
    美術: 9
  }
end
