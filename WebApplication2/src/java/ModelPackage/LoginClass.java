/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelPackage;

/**
 *
 * @author rudre
 */
public class LoginClass {
    String Username;
    String password;
    public LoginClass(){}
    public LoginClass(String uname,String upass){
        this.Username=uname;
        this.password=upass;
    }
    public void setUsername(String uname) {
        this.Username = uname;
        
    }

    public void setPassword(String upass) {
        this.password = upass;
    }

    public String getUsername() {
        return Username;
    }

    public String getPassword() {
        return password;
    }
    
    @Override
    public boolean equals(Object o){
        LoginClass l = (LoginClass)o;
        if(Username.equals(l.getUsername()) && password.equals(l.getPassword())){
            return true;
        }
        else {
            return false;
        }
    }
}
