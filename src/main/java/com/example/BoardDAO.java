package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;
    /*
        private final String BOARD_INSERT = "insert into BOARD (category, title, writer, content) values (?,?,?,?)";
        private final String BOARD_UPDATE = "update BOARD set category=?, title=?, writer=?, content=? where seq=?";
        private final String BOARD_DELETE = "delete from BOARD  where seq=?";
        private final String BOARD_GET = "select * from BOARD  where seq=?";
        private final String BOARD_LIST = "select * from BOARD order by seq desc";
    */
    public int insertBoard(BoardVO vo) {
        System.out.println("===> JDBC로 insertBoard() 기능 처리");
        String sql = "insert into BOARD (category, title, writer, content) values ("
                + "'" + vo.getCategory() + "',"
                + "'" + vo.getTitle() + "',"
                + "'" + vo.getWriter() + "',"
                + "'" + vo.getContent() + "')";
        return jdbcTemplate.update(sql);
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        System.out.println("===> JDBC로 deleteBoard() 기능 처리");
        String sql = "delete from BOARD  where seq = " + seq;
        return jdbcTemplate.update(sql);
    }
    public int updateBoard(BoardVO vo) {
        System.out.println("===> JDBC로 updateBoard() 기능 처리");
        String sql = "update BOARD set "
                + " category='" + vo.getCategory() + "',"
                + " title='" + vo.getTitle() + "',"
                + " writer='" + vo.getWriter() + "',"
                + " content='" + vo.getContent() + "' where seq=" + vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setCategory(rs.getString("category"));
            vo.setTitle(rs.getString("title"));
            vo.setWriter(rs.getString("writer"));
            vo.setContent(rs.getString("content"));
            vo.setRegdate(rs.getDate("regdate"));
            return vo;
        }
    }

    public BoardVO getBoard(int seq) {
        System.out.println("===> JDBC로 getBoard() 기능 처리");
        String sql = "select * from BOARD where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList(){
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        String sql = "select * from BOARD order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}