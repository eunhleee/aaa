package com.cos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cos.domain.AnimalVO;
import com.cos.domain.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO{

	@Inject
	private SqlSession session;
	private static final String namespace = "com.cos.domain.category";
	
	@Override
	public List<CategoryVO> selectGubun1(int ctGubun2) throws Exception {
		return session.selectList(namespace+".selectGubun1", ctGubun2);
	}
	
	@Override
	public List<CategoryVO> selectGubun2(int ctGubun2) throws Exception {
		return session.selectList(namespace+".selectGubun2", ctGubun2);
	}

	@Override
	public void insert(CategoryVO category) throws Exception {
		session.insert(namespace+".insert", category);		
	}

	@Override
	public List<CategoryVO> categorySelect(AnimalVO animal) throws Exception {
		return session.selectList(namespace+".categorySelect", animal);
	}
	
	@Override
	public void update(CategoryVO category) throws Exception {
		session.update(namespace+".update", category);
	}
	
	@Override
	public void delete(int ctNum) throws Exception {
		session.delete(namespace+".delete", ctNum);
	}


}
