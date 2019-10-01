class Scontact < SalesforceModel
  self.table_name =  ENV['HEROKUCONNECT_SCHEMA'] + '.contact'

  attr_protected :createddate, :systemmodstamp, :lastmodifieddate
end
