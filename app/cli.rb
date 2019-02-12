class CLI

   def intro


   end

   def help

   end

   def list_topics

   end

   class Search
     def self.search_loop
       search_hash = {}
       search_hash[:subject] = self.subject
       while true
         puts "Would you like to refine your search ? (y/n)"
         refine = gets.chomp.downcase
         if refine == 'n'
           break
         else
           puts "What criteria would you like to add?"
           puts "Headline - Date - Keyword - Category"
           criteria = gets.chomp.downcase

           case criteria
           when 'headline'
            search_hash[:headline] =  self.headline_search
           when 'date'
             dates = self.date_search
             search_hash[:start] = dates[0]
             search_hash[:end] = dates[1]
           when 'keyword'
             search_hash[:keyword] = self.keyword_search
           when 'category'
             search_hash[:category] = self.category_search
           else
             puts "Sorry we did not recogise your input"
           end #end of switch statement
         end #end of if statement
       end #end of while loop
       search_hash
     end #end of search class

     def self.headline_search
       puts 'What headline would you like to search for ?'
       headline = gets.chomp.downcase
     end

     def self.date_search
       puts "What start date would you like ? yyyymmdd"
       start_date = gets.chomp.downcase
       puts "What end date would you like ? yyyymmdd"
       end_date = gets.chomp.downcase
       date = [start_date, end_date]
     end

     def self.keyword_search
       puts "What keyword would you like to search by ?"
       keyword = gets.chomp.downcase
     end

     def self.category_search
       puts 'What category would you like to search ?'
       category = gets.chomp.downcase
     end

     def self.subject
         puts "What subject would you like to search for ?"
         subject = gets.chomp.downcase
     end

     def self.date
       puts "Would you like to input a search date ?(y/n)"
       answer = gets.chomp.downcase
       if answer == 'y'
         puts "What date would you like to search from (yyyymmdd)"
         date = gets.chomp
       else
        date = nil
       end
     end

   end #end of search class

end #end of CLI class
