i = 0

test = {
          self_pickup_only: true,
          ecom_article: 'aaaa',
        }.tap do |result|
    		result[:ecom_article] = 'bbb'
        	#puts result

		
        end

#puts test


result = {supply_targets: 'aaab'}

result.merge!(
              {
                supply_targets: 'aaab', 
                supply_targets_new: 'aaad'
              }
            )

#puts result

supply_targets = data[''].presence.to_s.split(Sql::GC_ROW_SEPARATOR)