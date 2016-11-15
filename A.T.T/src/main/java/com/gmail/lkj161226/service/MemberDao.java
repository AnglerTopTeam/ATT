package com.gmail.lkj161226.service;

import java.util.ArrayList;

import com.gmail.lkj161226.entities.Member;


public interface MemberDao {
	public int selectCount( String id );
	public int sCount( String nicname );
	public Member selectOne( String id );
	public int insertRow(Member member);
	public ArrayList<Member> selectAll();
	public int updateRow(Member member);
	public int deleteRow( String id );
	public Member selectLogin( Member member );
	
}
