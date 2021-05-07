public class AccountController {
    
    public List<Account> a {get;set;}
	
    public AccountController(ApexPages.standardController con){
        String accountId = con.getId();
        a = [Select id, Site, Name From Account Where Id = :accountId];
        
    }
}