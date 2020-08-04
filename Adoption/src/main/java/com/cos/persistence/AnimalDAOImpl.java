package com.cos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.cos.domain.AnimalVO;
import com.cos.util.MyUtil;
import com.cos.util.Pagination;

@Repository
public class AnimalDAOImpl implements AnimalDAO{

	@Inject
	private SqlSession session;
	private static final String namespace = "com.cos.domain.Animal";

	@Override
	public List<AnimalVO> selectTitle(int kind2) throws Exception {
		return session.selectList(namespace+".selectTitle", kind2);
	}
	
	@Override
	public List<AnimalVO> selectTitle2(int kind2) throws Exception {
		return session.selectList(namespace+".selectTitle2", kind2);
	}
	
	@Override
	public AnimalVO selectMaxNum() throws Exception {
		return session.selectOne(namespace+".selectMaxNum");
	}
	
	@Override
	public AnimalVO selectMinNum(int kind2) throws Exception {
		return session.selectOne(namespace+".selectMinNum", kind2);
	}
	
	@Override
	public AnimalVO selectMinNum2(int kind2) throws Exception {
		return session.selectOne(namespace+".selectMinNum2", kind2);
	}

	@Override
	public AnimalVO select(int num) throws Exception {
		AnimalVO Animal = session.selectOne(namespace+".select", num);
		if (Animal != null) {
			Animal.setContent(MyUtil.makeYoutube(Animal.getContent()));
		}	
		return Animal;
	}

	@Override
	public List<AnimalVO> newSelect(Pagination pagination) throws Exception {
		return session.selectList(namespace+".newSelect", pagination);
	}

	@Override
	public List<AnimalVO> allSelect(Pagination pagination) throws Exception {
		return session.selectList(namespace+".allSelect", pagination);
	}

	@Override
	public void delete(int num) throws Exception {
		session.delete(namespace+".delete", num);
	}

	@Override
	public void update(AnimalVO animal) throws Exception {
		session.update(namespace+".update", animal);
	}
	
	@Override
	public void insert(AnimalVO animal) throws Exception {
		session.insert(namespace+".insert", animal);	
	}

	@Override
	public int count(Pagination pagination) throws Exception {
		return session.selectOne(namespace+".count", pagination);
	}
	@Override
	public int count2(Pagination pagination) throws Exception {
		return session.selectOne(namespace+".count2", pagination);
	}

	@Override
	public void addComment(AnimalVO animal) throws Exception {
		session.insert(namespace+".cinsert", animal);
	}

	@Override
	public List<AnimalVO> selectComment(AnimalVO animal) throws Exception {
		return session.selectList(namespace+".cselect", animal);
	}

	@Override
	public void updateComment(AnimalVO animal) throws Exception {
		session.update(namespace+".cupdate", animal);
	}

	@Override
	public void deleteComment(int acNum) throws Exception {
		session.delete(namespace+".cdelete", acNum);
	}
	
}
