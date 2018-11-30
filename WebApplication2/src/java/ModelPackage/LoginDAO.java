/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelPackage;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;




/**
 *
 * @author rudre
 */
public class LoginDAO {
    public boolean search(LoginClass l){
        LoginClass ll=null;
        Configuration cf=new Configuration();
        cf.configure("hibercfg/hibernate.cfg.xml");
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        ll=(LoginClass)s.get(LoginClass.class,l.getUsername());
        s.close();
        sf.close();
        if(ll==null){
            return false;
        }
        else{
            if(ll.equals(l))
            {
             return true;   
            }else{
                return false;
            }
        }
    }
}
