module ApplicationHelper

    def locale
        I18n.locale == :en ? "USA" : "Português BR"
    end
    
    #def locale
        #if I18n.locale == :en
            #"USA"
        #else
            #"Português BR"
        #end
    #end

    def date_br(date_us)
        date_us.strftime("%d/%m/%Y")
    end 
    
    def application_name
        "Crypto Wallet"
    end       
end
