class Measurement < ActiveRecord::Base
    include Filterable
    scope :n, -> (n) { where name: n }
    scope :starttime, -> (starttime) { where("ts >= :starttime", { starttime: starttime}) }
    scope :endtime, -> (endtime) { where("ts <= :endtime", { endtime: endtime}) }
end
