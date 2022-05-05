package com.dao;    
import java.sql.ResultSet;
import org.springframework.jdbc.BadSqlGrammarException;    
import org.springframework.jdbc.core.JdbcTemplate;
import java.util.logging.Logger;
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.RowMapper;    
import com.beans.Podcast;    
    
public class PodcastDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public void save(Podcast p){    
	
		    try {
		    	String sql="insert into podcasts(name,date,episodes,artist) values('"+p.getName()+"','"+p.getDate()+"','"+p.getEpisode()+"','"+p.getArtist()+"')";    
		    	template.update(sql);
		      }catch(BadSqlGrammarException e){
		    	  System.out.print(e);
		      }
		    
}    

public List<Podcast> getPodcast(){    
    return template.query("select * from podcasts",new RowMapper<Podcast>(){    
        public Podcast mapRow(ResultSet rs, int row) throws SQLException {    
        	Podcast e=new Podcast();    
            e.setId(rs.getInt(1));    
            e.setName(rs.getString(2));    
            e.setDate(rs.getString(3));   
            e.setEpisode(rs.getString(4)); 
            e.setArtist(rs.getString(5));    
            return e;    
        }    
    });    
}    
}   