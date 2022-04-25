package com.dao;    
import java.sql.ResultSet;
import org.springframework.jdbc.BadSqlGrammarException;    
import org.springframework.jdbc.core.JdbcTemplate;
import java.util.logging.Logger;
import java.sql.SQLException;    
import java.util.List;    
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.RowMapper;    
import com.beans.Song;    
    
public class SongDao {    
JdbcTemplate template;    
    
public void setTemplate(JdbcTemplate template) {    
    this.template = template;    
}    
public void save(Song p){    
	
		    try {
		    	String sql="insert into songs(name,duration,artist) values('"+p.getName()+"',"+p.getDuration()+",'"+p.getArtist()+"')";    
		    	template.update(sql);
		      }catch(BadSqlGrammarException e){
		    	  System.out.print(e);
		      }
		    
}    

public List<Song> getSong(){    
    return template.query("select * from songs",new RowMapper<Song>(){    
        public Song mapRow(ResultSet rs, int row) throws SQLException {    
            Song e=new Song();    
            e.setId(rs.getInt(1));    
            e.setName(rs.getString(2));    
            e.setDuration(rs.getString(3));    
            e.setArtist(rs.getString(4));    
            return e;    
        }    
    });    
}    
}   