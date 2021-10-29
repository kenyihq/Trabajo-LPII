/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Config.Conexion;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author kenyi
 */
@Controller
public class Controlador {
    
    // Instanciamos conexión
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
        
    @RequestMapping("index.html")
    public ModelAndView Listar () {
        String query = "SELECT * FROM nombre";
        List datos = this.jdbcTemplate.queryForList(query);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
}
